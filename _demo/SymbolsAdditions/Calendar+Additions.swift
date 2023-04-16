//
//  Calendar+Additions.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 16/04/2023.
//

import Foundation

extension Calendar {
    static var currentGregorianMonth: Int {
        Calendar(identifier: .gregorian).component(.month, from: Date())
    }
}
