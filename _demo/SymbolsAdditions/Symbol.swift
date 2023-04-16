//
//  SymbolLists.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 16/04/2023.
//

import Foundation
import SwiftUI

struct Symbol: Identifiable {
    let imageName: String
    
    var id: String {
        return imageName
    }
}

enum SymbolCategory: Identifiable, CaseIterable {
    case agriculture
    case calendars
    
    var id: SymbolCategory {
        return self
    }
    
    var title: String {
        switch self {
        case .agriculture:
            return "Agriculture"
        case .calendars:
            return "Calendars"
        }
    }
    
    var icon: Image {
        switch self {
        case .agriculture:
            return Image("tractor.fill")
        case .calendars:
            let monthNumber = Calendar.currentGregorianMonth
            return Image("\(monthNumber).calendar")
        }
    }

}
