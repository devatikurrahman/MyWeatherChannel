//
//  ContentView.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color("CustomLightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 1) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        .foregroundColor(.white)
                    
                    // Shift + Option + 8 gives degree(°) symbol
                    Text("76°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundStyle(.white)
                }
                Spacer()
                HStack(spacing: 5) {
                    DailyWeatherView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 76)
                    DailyWeatherView(dayOfWeek: "SUN", imageName: "cloud.sun.fill", temperature: 80)
                    DailyWeatherView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 80)
                    DailyWeatherView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 80)
                    DailyWeatherView(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 80)
                    DailyWeatherView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 80)
                    DailyWeatherView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 80)
                }
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
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
