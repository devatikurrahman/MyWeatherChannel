//
//  WeatherHeaderView.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/8/23.
//

import SwiftUI

struct WeatherHeaderView: View {
    var weatherNow: WeatherModel
        //.system(size: 90, weight: .medium, design: .default)
        //.custom("Helvetica Neue Thin", size: 90)
    var body: some View {
        VStack(spacing: 1) {
            CityTextView(cityText: "Cupertino, CA")
            HStack(alignment: .top) {
                Text("76°")
                    .font(.system(size: 90, weight: .thin, design: .rounded))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .padding(EdgeInsets(top: 25, leading: 0, bottom: 10, trailing: 0))
                
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    .foregroundColor(.white)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
            Text("Sunny Day")
                //.font(.title2)
                .font(.system(size: 25, weight: .light, design: .default))
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 30, trailing: 0))
            
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    // Shift + Option + 8 gives degree(°) symbol
                    //Text("\(weatherNow.temperature)°")
                    Text("Feels Like: 87°")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    //Image(systemName: weatherNow.weatherIcon ?? "")
                    Text("H: 99°  |  L: 60°")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                .padding(.leading, 10)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 3, trailing: 10))
            
            Divider()
                .padding(.bottom, 1.0)
                .background(.white)
            
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    // Shift + Option + 8 gives degree(°) symbol
                    Text("Rainfall: 7 mm (in 24hs)")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                        .foregroundColor(.white)
                    Text("Pressure: 1012 hPa")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                        .foregroundColor(.white)
                    Text("Humidity: 95%")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                        .foregroundColor(.white)
                    Text("Sunrise: 6.00 AM")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                        .foregroundColor(.white)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    //Image(systemName: weatherNow.weatherIcon ?? "")
                    Text("Wind: 5 km/h")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                        .foregroundColor(.white)
                    Text("Visibility: 3 km")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                        .foregroundColor(.white)
                    Text("Dew Point: 75°")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                        .foregroundColor(.white)
                    Text("Sunset: 5.10 PM")
                        .font(.system(size: 18, weight: .light, design: .default))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                        .padding([.top, .bottom], 0.5)
                        .foregroundColor(.white)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                .padding(.leading, 10)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 3, trailing: 10))
        }
        .background(.clear)
        .padding(.bottom, 40)
    }
}

#Preview {
    WeatherHeaderView(weatherNow: (WeatherModel.weatherData[0]))
}
