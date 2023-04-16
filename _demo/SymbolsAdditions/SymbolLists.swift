//
//  Symbol+Additions.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 16/04/2023.
//

import Foundation

extension SymbolCategory {
    var symbols: [Symbol] {
        switch self {
        case .agriculture:
            return SymbolLists.agriculture
        case .calendars:
            return SymbolLists.calendars
        }
    }
}

fileprivate enum SymbolLists {
    static let agriculture: [Symbol] = [
        Symbol(imageName: "bale"),
        Symbol(imageName: "fertility"),
        Symbol(imageName: "shed"),
        Symbol(imageName: "shed.fill"),
        Symbol(imageName: "tractor.fill"),
    ]
    
    static let calendars: [Symbol] = {
        (1...12).map { Symbol(imageName: "\($0).calendar") }
    }()
}
