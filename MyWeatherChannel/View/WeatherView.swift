//
//  ContentView.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/4/23.
//

import SwiftUI

struct WeatherView: View {
    
    var weatherData: [WeatherModel]
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
                
            VStack {
                CityTextView(cityText: "Cupertino, CA")
                TopWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                HStack(spacing: 5) {
                    ForEach(weatherData) { data in
                        DailyWeatherView(dayOfWeek: data.dayOfWeek, imageName: data.weatherIcon ?? "", temperature: data.temperature)
                    }
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    ChangeTimeButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    WeatherView(weatherData: WeatherModel.weatherData)
}

struct DailyWeatherView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
            Text("\(temperature)°")
                .font(.system(size: 25, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("CustomLightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityText: String
    
    var body: some View {
        Text(cityText)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct TopWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 1) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .foregroundColor(.white)
            
            // Shift + Option + 8 gives degree(°) symbol
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 50)
    }
}

struct ChangeTimeButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
        .font(.system(size: 20, weight: .medium, design: .default))
        .frame(width: 280, height: 50)
        .background(backgroundColor)
        .foregroundColor(textColor)
        .cornerRadius(10.0)
    }
}
