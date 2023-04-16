//
//  ContentView.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 16/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    #if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    #endif
    
    var body: some View {
        #if os(iOS)
        if horizontalSizeClass == .regular {
            largeNavigation
        } else {
            smallNavigation
        }
        #else
        largeNavigation
        #endif
    }
    
    private var smallNavigation: some View {
        NavigationStack {
            sidebar
        }
    }
    
    private var largeNavigation: some View {
        NavigationSplitView {
            sidebar
        } detail: {
            SymbolPreviewList(symbols: SymbolCategory.allCases.first!.symbols)
        }

    }
    
    private var sidebar: some View {
        CategoryView()
            .navigationDestination(for: SymbolCategory.self) { category in
                category.previewDestination
            }
    }
}

extension SymbolCategory {
    var previewDestination: some View {
        SymbolPreviewList(symbols: symbols)
            .navigationTitle(title)
            #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
