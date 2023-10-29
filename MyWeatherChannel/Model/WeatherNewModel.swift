//
//  WeatherNewModel.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/25/23.
//

import Foundation

struct WeatherNewModel: Decodable {
//    struct Days: Decodable {
//        let datetime: String?
//        let datetimeEpoch: Int?
//        let tempmax: Double?
//        let tempmin: Double?
//        let temp: Double?
//        let feelslikemax: Double?
//        let feelslikemin: Double?
//        let feelslike: Double?
//        let dew: Double?
//        let humidity: Double?
//        let precip: Double?
//        let precipprob: Int?
//        let precipcover: Double?
//        //let preciptype: []
//        let snow: Int?
//        let snowdepth: Int?
//        let windgust: Double?
//        let windspeed: Double?
//        let winddir: Double?
//        let pressure: Double?
//        let cloudcover: Double?
//        let visibility: Int?
//        let solarradiation: Double?
//        let solarenergy: Double?
//        let uvindex: Int?
//        let severrisk: Int?
//        let sunrise: String?
//        let sunriseEpoch: Int?
//        let sunset: String?
//        let sunsetEpoch: Int?
//        let moonphase: Double?
//        let conditions: String?
//        let description: String?
//    
//        let hours: [CurrentConditions]
//    }
//    
//    struct CurrentConditions: Decodable {
//        let datetime: String?
//        let datetimeEpoch: Int?
//        let temp: Double?
//        let feelslike: Double?
//        let humidity: Double?
//        let dew: Double?
//        let precip: Double?
//        let precipprob: Double?
//        let snow: Int?
//        let snowdepth: Int?
//        //let prceiptype:
//        let windgust: Double?
//        let windspeed: Double?
//        let winddir: Int?
//        let pressure: Double?
//        let visibility: Double?
//        let cloudcover: Int?
//        let solarradiation: Int?
//        let solarenergy: Int?
//        let uvindex: Int?
//        let severerisk: Int?
//        let conditions: String?
//        let sunrise: String?
//        let sunriseEpoch: Int?
//        let sunset: String?
//        let sunsetEpoch: Int?
//    }
    
    let queryCost: Int
    let address: String?
    let description: String?
    //let currentConditions: CurrentConditions?
    
    //let days: [Days]
    
}
