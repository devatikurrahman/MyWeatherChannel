//
//  WeatherAPIService.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/25/23.
//

import Foundation
import CoreLocation

class WeatherAPIService {
    static let shared = WeatherAPIService()
    
    func getWeatherJSON(fromLocation location: CLLocationCoordinate2D) async throws -> WeatherNewModel {
        let urlString = "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/\(location.latitude),\(location.longitude)?key=LMVE559F6RKUWVCWLU5TCHUAL"
        print("Weather API: \(urlString)")
        // Check if string url is validated
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        // Get url data from network call
        let (data, response) = try await URLSession.shared.data(from: url)
        
        // Cast the network response with HTTPURLResponse,
        // then check if the response is 200, meaning the request has completed successfully, no errors happened.
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw APIError.invalidResponse
        }
        
        // Decode the server returned JSON data
        do {
            
            return try decoder.decode(WeatherNewModel.self, from: data)
        } catch {
            throw APIError.invalidData
        }
        
    }
    
    private lazy var decoder: JSONDecoder = {
        let aDecoder = JSONDecoder()
        aDecoder.dateDecodingStrategy = .millisecondsSince1970
        return aDecoder
    }()
}
