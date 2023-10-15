//
//  TimeCustomText.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/15/23.
//

import SwiftUI

struct TimeCustomText: View {
    var text: String
    var splitText: String {
        var splitArray: [String] = []
        if(text.lowercased().contains("am") ||
           text.lowercased().contains("pm")) {
            let suffixString = text.suffix(2)
            splitArray = text.lowercased().split(separator: suffixString.lowercased()).map { String($0) }
        } else {
            return text
        }
        return splitArray.joined()
    }
    
    var amPMText: String {
        if(text.lowercased().contains("am") ||
           text.lowercased().contains("pm")) {
            return String(text.suffix(2))
        }
        return ""
    }
        
    
    var body: some View {
        HStack(spacing:0) {
            if(!splitText.isEmpty) {
                Text(splitText)
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundStyle(.white)
            }
            if(!amPMText.isEmpty) {
                Text(amPMText)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundStyle(.white)
            }
        }
        .background(.clear)
    }
}

#Preview {
    TimeCustomText(text: "")
}
