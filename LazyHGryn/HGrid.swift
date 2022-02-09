//
//  HGrid.swift
//  LazyHGryn
//
//  Created by Артур Дохно on 09.02.2022.
//

import SwiftUI

struct HGrid: View {
    let colors:[Color]
    let rows: [GridItem] = [GridItem(.adaptive(minimum: 50))]
       var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(1..<401) { index in
                    colors[index % colors.count]
                        .overlay(
                            Text("\(index)")
                        )
                        .frame(width: 100)
                }
            }
        }
        .embedInNavigation()
    }
}

struct HGrid_Previews: PreviewProvider {
    static var previews: some View {
        HGrid(colors: [.red, .orange, .yellow, .green, .blue, .purple, .gray])
    }
}
