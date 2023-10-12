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
            HStack(alignment: .top) {
                Text("76°")
                    .font(.system(size: 85, weight: .medium, design: .default))
                    .frame(width: 140, height: 140, alignment: .leading)
                    .foregroundStyle(.white)
                    .padding([.top, .bottom])
                
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
            Text("Sunny Day")
                .font(.title2)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: -20, leading: 0, bottom: 30, trailing: 0))
            
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    // Shift + Option + 8 gives degree(°) symbol
                    //Text("\(weatherNow.temperature)°")
                    Text("Feels Like: 87°")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    //Image(systemName: weatherNow.weatherIcon ?? "")
                    Text("H: 99° L: 60°")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 3, trailing: 10))
            
            Divider()
                .padding(.bottom, 2.0)
                .background(.gray)
            
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    // Shift + Option + 8 gives degree(°) symbol
                    Text("Rainfall: 7 mm (in 24hs)")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                    Text("Pressure: 1012 hPa")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                    Text("Humidity: 95%")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                    Text("Sunrise: 6.00 AM")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    //Image(systemName: weatherNow.weatherIcon ?? "")
                    Text("Wind: 5 km/h")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                    Text("Visibility: 3 km")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                    Text("Dew Point: 75°")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                    Text("Sunset: 5.10 PM")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 3, trailing: 10))
        }
        .background(.purple)
        .padding(.bottom, 50)
    }
}

#Preview {
    WeatherHeaderView(weatherNow: .constant(WeatherModel.weatherData[0]))
}
