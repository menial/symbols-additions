//
//  RenderingModePicker.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 01/04/2023.
//

import SwiftUI

struct RenderingModePicker: View {
    
    @Binding var renderingMode: RenderingMode
    
    var body: some View {
        Picker("Rendering Mode", selection: $renderingMode) {
            ForEach(RenderingMode.allCases) { mode in
                mode.title
            }
        }
        .pickerStyle(.menu)
    }
}


struct RenderingModePicker_Previews: PreviewProvider {
    static var previews: some View {
        RenderingModePicker(renderingMode: .constant(.monochrome))
    }
}
