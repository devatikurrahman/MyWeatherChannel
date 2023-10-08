//
//  MyWeatherChannelApp.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/4/23.
//

import SwiftUI

@main
struct MyWeatherChannelApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(weatherData: WeatherModel.weatherData)
        }
    }
}
