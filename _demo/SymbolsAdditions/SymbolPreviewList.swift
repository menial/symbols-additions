//
//  SymbolPreviewList.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 16/04/2023.
//

import SwiftUI

struct SymbolPreviewList: View {
    
    @AppStorage("renderingMode")
    private var renderingMode: RenderingMode = .monochrome
    
    var symbols: [Symbol]
    
    var body: some View {
        List {
            Section {
                RenderingModePicker(renderingMode: $renderingMode)
            }
            
            switch renderingMode {
            case .monochrome:
                content
                    .symbolRenderingMode(.monochrome)
            case .multicolor:
                content
                    .symbolRenderingMode(.multicolor)
            case .hierarchical:
                content
                    .symbolRenderingMode(.hierarchical)
            case .palette:
                content
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color.primary, Color.blue)
            }
        }
    }
    
    private var content: some View {
        Section {
            ForEach(symbols) { symbol in
                Label(symbol.imageName, image: symbol.imageName)
            }
        }
    }
}

struct SymbolPreviewList_Previews: PreviewProvider {
    static var previews: some View {
        SymbolPreviewList(symbols: [Symbol(imageName: "1.calendar")])
    }
}
