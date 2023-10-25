//
//  WeatherAPIService.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/25/23.
//

import Foundation

class WeatherAPIService {
    static let shared = WeatherAPIService()
    
    enum APIError: Error {
        case invalidURL
        case invalidResponse
        case invalidData
    }
    
    func getJSON(urlString: String) async throws -> Void {
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
            let decoder = JSONDecoder()
            
        }
        
    }
}
