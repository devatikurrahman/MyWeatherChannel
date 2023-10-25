//
//  WeatherNewModel.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/25/23.
//

import Foundation

struct WeatherNewModel: Decodable {
    struct Days: Decodable {
        let datetime: String
        let datetimeEpoch: Int32
        let tempmax: Float
        let tempmin: Float
        let temp: Float
        let feelslikemax: Float
        let feelslikemin: Float
        let feelslike: Float
        let dew: Float
        let humidity: Float
        let precip: Double
        let precipprob: Int
        let precipcover: Double
        //let preciptype: []
        let snow: String
        let snowdepth: String
        let windgust: Float
        let windspeed: Double
        let winddir: Double
        let pressure: Double
        let cloudcover: Double
        let visibility: Int
        let solarradiation: Double
        let solarenergy: Double
        let uvindex: Int
        let severrisk: Int
        let sunrise: String
        let sunriseEpoch: Int32
        let sunset: String
        let sunsetEpoch: Int32
        let moonphase: Double
        let conditions: String
        let description: String
        
        struct hours: Decodable {
            let datetime: String
            let datetimeEpoch: Int32
            let temp: Double
            let feelslike: Double
            let humidity: Double
            let dew: Double
            let precip: Double
            let precipprob: Int
            let snow: Int
            let snowdepth: Int
            //let prceiptype:
            let windgust: Double
            let windspeed: Int
            let winddir: Int
            let pressure: Double
            let visibility: Double
            let cloudcover: Int
            let solarradiation: Int
            let solarenergy: Int
            let uvindex: Int
            let severerisk: Int?
            let conditions: String
        }
        let hours: [hours]
        
        struct currentConditions: Decodable {
            let datetime: String
            let datetimeEpoch: Int32
            let temp: Double
            let feelslike: Double
            let humidity: Double
            let dew: Double
            let precip: Double
            let precipprob: Int
            let snow: Int
            let snowdepth: Int
            //let prceiptype:
            let windgust: Double
            let windspeed: Int
            let winddir: Int
            let pressure: Double
            let visibility: Double
            let cloudcover: Int
            let solarradiation: Int
            let solarenergy: Int
            let uvindex: Int
            let severerisk: Int?
            let conditions: String
        }
    }
    
    let queryCost: Int
    let address: String
    let description: String?
    
    let days: [Days]
    
}
