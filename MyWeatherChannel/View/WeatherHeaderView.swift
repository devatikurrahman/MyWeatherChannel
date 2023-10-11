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
            CityTextView(cityText: "Cupertino, CA")
            HStack {
                Text("76°")
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding([.top, .bottom])
                
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .foregroundColor(.white)
            }
            .padding(20)
            HStack {
                VStack {
                    // Shift + Option + 8 gives degree(°) symbol
                    //Text("\(weatherNow.temperature)°")
                    
                    
                    Text("Temperature")
                    Text("Temperature")
                    Text("Feels Like: 32°")
                }
                .padding(.horizontal)
                VStack {
                    //Image(systemName: weatherNow.weatherIcon ?? "")
                    
                    
                    Text("Temperature")
                }
            }
            
            
            
        }
        .background(.purple)
        .padding(.bottom, 50)
    }
}

#Preview {
    WeatherHeaderView(weatherNow: .constant(WeatherModel.weatherData[0]))
}
