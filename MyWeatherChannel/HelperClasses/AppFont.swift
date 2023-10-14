//
//  AppFont.swift
//  MyWeatherChannel
//
//  Created by Atikur Rahman on 10/13/23.
//

import Foundation
import SwiftUI

extension Font {
    static let veryLargeFont = Font.custom("Helvetica", size: Font.TextStyle.largeTitle.size, relativeTo: .caption)
    static let largeFont = Font.custom("Helvetica", size: Font.TextStyle.title.size, relativeTo: .caption)
    static let mediumFont = Font.custom("Helvetica", size: Font.TextStyle.subheadline.size, relativeTo: .caption)
    static let mediumSmallFont = Font.custom("Helvetica", size: Font.TextStyle.footnote.size, relativeTo: .caption)
    static let smallFont = Font.custom("Helvetica", size: Font.TextStyle.caption.size, relativeTo: .caption)
    static let verySmallFont = Font.custom("Helvetica", size: Font.TextStyle.caption2.size, relativeTo: .caption)
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 90
        case .title: return 50
        case .title2: return 35
        case .title3: return 25
        case .headline, .body: return 20
        case .subheadline, .callout: return 18
        case .footnote: return 14
        case .caption: return 12
        case .caption2: return 10
        @unknown default:
            return 8
        }
    }
}
