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
    var description: String?
    var weatherIcon: String?
    var dataFormat: Int
    
    init(id: UUID = UUID(), dayOfWeek: String, temperature: Int,
         description: String? = nil, weatherIcon: String? = nil, dataFormat: Int) {
        self.id = id
        if dataFormat == 0 {
            self.dayOfWeek = dayOfWeek
        } else {
            self.dayOfWeek = dayOfWeek.uppercased()
        }
        self.temperature = temperature
        self.description = description
        self.weatherIcon = weatherIcon
        self.dataFormat = dataFormat
    }
}

extension WeatherModel {
    static var todaysWeather: WeatherModel {
        WeatherModel(dayOfWeek: "", temperature: 0, description: nil, weatherIcon: nil, dataFormat: 0)
    }
}

extension WeatherModel {
    static var weatherData: [WeatherModel] =
    [
        WeatherModel(dayOfWeek: "SAT", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 1),
        WeatherModel(dayOfWeek: "Sun", temperature: 76, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 1),
        WeatherModel(dayOfWeek: "mon", temperature: 72, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 1),
        WeatherModel(dayOfWeek: "Tue", temperature: 80, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 1),
        WeatherModel(dayOfWeek: "Wed", temperature: 85, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 1),
        WeatherModel(dayOfWeek: "Thu", temperature: 78, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 1),
        WeatherModel(dayOfWeek: "FRI", temperature: 40, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 1)
    ]
}

extension WeatherModel {
    static var hourlyWeatherData: [WeatherModel] =
    [
        WeatherModel(dayOfWeek: "Now", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "8AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "9AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "10AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "11AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "12PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "1PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "2PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "3PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "4PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "5PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "5.20PM", temperature: 60, description: "Sunset", weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "6PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "7PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "8PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "9PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "10PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "11PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "12PM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "1AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "2AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "3AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "4AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "5AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "6AM", temperature: 60, description: "Sunrise", weatherIcon: "cloud.sun.fill", dataFormat: 0),
        WeatherModel(dayOfWeek: "7AM", temperature: 60, description: nil, weatherIcon: "cloud.sun.fill", dataFormat: 0),
    ]
}
