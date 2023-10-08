//
//  WeatherHeaderView.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/8/23.
//

import SwiftUI

struct WeatherHeaderView: View {
    @Binding var weatherNow: WeatherModel
    
    var body: some View {
        VStack(spacing: 1) {
            Image(systemName: weatherNow.weatherIcon ?? "")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .foregroundColor(.white)
            
            // Shift + Option + 8 gives degree(°) symbol
            Text("\(weatherNow.temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 50)
    }
}

#Preview {
    WeatherHeaderView(weatherNow: .constant(WeatherModel.weatherData[0]))
}
