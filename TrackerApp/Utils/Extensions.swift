//
//  Extensions.swift
//  TrackerApp
//
//  Created by Ömer Faruk Dikili on 16.02.2025.
//

import Foundation
import SwiftUI

extension Color{
    static let backGround = Color("Background")
    static let iconColor = Color("Icon")
    static let textColor = Color("Text")
    static let systemBackground = Color(UIColor.systemBackground)
}

extension DateFormatter {
    static let allNumericUSA : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}



extension String {
    func dateParsed () -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else {
            return Date()
        }
        return parsedDate
    }
    
    
}
