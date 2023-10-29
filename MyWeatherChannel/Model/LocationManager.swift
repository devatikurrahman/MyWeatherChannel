//
//  LocationManager.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/22/23.
//

import CoreLocation

final class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    private var locationManager: CLLocationManager?
    @Published var currentLocation: CLLocation?
    @Published var locationCoordinate: CLLocationCoordinate2D?
    
    
    func checkIfLocationServiceIsEnabled() {
        if(CLLocationManager.locationServicesEnabled()) {
            self.locationManager = CLLocationManager()
            self.locationManager?.delegate = self
            self.locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        } else {
            print("Location service is not enabled now on this device. Please check your settings to enable it.")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        switch locationManager.authorizationStatus {
        case .notDetermined: // Authorization not determined yet.
            locationManager.requestWhenInUseAuthorization()
            break
        case .restricted: // Location services currently unavailable.
            //disableLocationFeatures()
            print("Your location is restricted likely due to parental controls.")
            break
        case .denied: // Location services currently unavailable.
            print("You have denied this app location permission. Go into settings to change it.")
        case .authorizedAlways, .authorizedWhenInUse: // Location services are available.
            //enableLocationFeatures()
            locationManager.startUpdatingLocation()
            break
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        print("authorizationStatus: \(manager.authorizationStatus)")
        checkLocationAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let newLocation = locations.last else { return }
        currentLocation = newLocation
        print("Current Location: \(currentLocation!.coordinate.latitude), \(currentLocation!.coordinate.longitude)")
        locationCoordinate = newLocation.coordinate
        print("LocationCoordinate Coordinate: \(locationCoordinate!.latitude), \(locationCoordinate!.longitude)")
        locationManager?.stopUpdatingLocation()
        
        Task {
            // Calling Weather API Server to get JSON data
            //await WeatherAPIService.shared.getWeatherJSON(fromLocation: newLocation.coordinate)
            do {
                print("#### Asynchronous called ##### ")
                // Calling Weather API Server to get JSON data
                if let coordinate = locationCoordinate {
                    let weatherJSONData = try await WeatherAPIService.shared.getWeatherJSON(fromLocation: coordinate)
                    print("queryCost: \(weatherJSONData.queryCost)")
                    print("address: \(weatherJSONData.address!)")
                    print("address: \(weatherJSONData.description!)")
                }
            } catch APIError.invalidURL {
                print("Invalid URL")
            } catch APIError.invalidResponse {
                print("Invalid Response")
            } catch APIError.invalidData {
                print("Invalid JSON Data")
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
