//
//  APIError.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/26/23.
//

import Foundation

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
