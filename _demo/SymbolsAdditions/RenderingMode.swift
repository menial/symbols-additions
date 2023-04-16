//
//  RenderingMode.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 16/04/2023.
//

import Foundation
import SwiftUI

enum RenderingMode: String, Hashable, Identifiable, CaseIterable {
    case monochrome
    case multicolor
    case hierarchical
    case palette
    
    var id: RenderingMode {
        return self
    }
    
    var title: Text {
        switch self {
        case .monochrome:
            return Text("Monochrome")
        case .multicolor:
            return Text("Multicolor")
        case .hierarchical:
            return Text("Hierarchical")
        case .palette:
            return Text("Palette")
        }
    }
    
    var mode: SymbolRenderingMode {
        switch self {
        case .monochrome:
            return .monochrome
        case .multicolor:
            return .multicolor
        case .hierarchical:
            return .hierarchical
        case .palette:
            return .palette
        }
    }
}
