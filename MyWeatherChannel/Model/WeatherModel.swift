//
//  WeatherModel.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/8/23.
//

import Foundation

struct WeatherModel: Identifiable, Codable {
    let id: UUID
    var dayOfWeek: String
    var temperature: Int
    var weatherIcon: String?
    
    init(id: UUID = UUID(), dayOfWeek: String, temperature: Int, weatherIcon: String? = nil) {
        self.id = id
        self.dayOfWeek = dayOfWeek.uppercased()
        self.temperature = temperature
        self.weatherIcon = weatherIcon
    }
}

extension WeatherModel {
    static var todaysWeather: WeatherModel {
        WeatherModel(dayOfWeek: "", temperature: 0, weatherIcon: nil)
    }
}

extension WeatherModel {
    static var weatherData: [WeatherModel] =
    [
        WeatherModel(dayOfWeek: "SAT", temperature: 60, weatherIcon: "cloud.sun.fill"),
        WeatherModel(dayOfWeek: "Sun", temperature: 76, weatherIcon: "cloud.sun.fill"),
        WeatherModel(dayOfWeek: "mon", temperature: 72, weatherIcon: "cloud.sun.fill"),
        WeatherModel(dayOfWeek: "Tue", temperature: 80, weatherIcon: "cloud.sun.fill"),
        WeatherModel(dayOfWeek: "Wed", temperature: 85, weatherIcon: "cloud.sun.fill"),
        WeatherModel(dayOfWeek: "Thu", temperature: 78, weatherIcon: "cloud.sun.fill"),
        WeatherModel(dayOfWeek: "FRI", temperature: 40, weatherIcon: "cloud.sun.fill")
    ]
}
