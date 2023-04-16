//
//  CategoryView.swift
//  SymbolsAdditions
//
//  Created by Ben Barnett on 16/04/2023.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        List {
            ForEach(SymbolCategory.allCases) { category in
                NavigationLink(value: category) {
                    Label(title: { Text(category.title) }, icon: { category.icon })
                }
            }
        }
        .navigationTitle("Categories")
        #if os(iOS)
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                Link(destination: URL(string: "https://menial.co.uk")!) {
                    Image("menial")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.secondary)
                }
            }
        }
        #endif
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CategoryView()
        }
    }
}
