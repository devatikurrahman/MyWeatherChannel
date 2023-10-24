//
//  WeatherMapView.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/24/23.
//

import SwiftUI
import MapKit

struct WeatherMapView: View {
    private var cityHallCoordinate = CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054)
    private var publicLibraryCoordinate = CLLocationCoordinate2D(latitude: 36.331516, longitude: -121.291054)
    private var playgroundCoordinate = CLLocationCoordinate2D(latitude: 35.331516, longitude: -120.891054)
    
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054),
//        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//    )
    
    @State private var region = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)))
    
    var body: some View {
        Map(position: $region) {
            UserAnnotation()
        }
//        Map {
//            Marker("San Francisco City Hall", coordinate: cityHallCoordinate)
//                .tint(.orange)
//            Marker("San Francisco Public Library", coordinate: publicLibraryCoordinate)
//                .tint(.blue)
//            Annotation("Diller Civic Center Playground", coordinate: playgroundCoordinate) {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 5)
//                        .fill(Color.yellow)
//                    Text("🛝")
//                        .padding(5)
//                }
//            }
//        }
        //.mapControlVisibility(.hidden)
    }
}

#Preview {
    WeatherMapView()
}
