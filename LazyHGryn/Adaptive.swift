//
//  Adaptive.swift
//  LazyHGryn
//
//  Created by Артур Дохно on 09.02.2022.
//

import SwiftUI

struct Adaptive: View {
    let colors:[Color]
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 50)),GridItem(.adaptive(minimum: 100, maximum: 120))]
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                ForEach(1..<401) { index in
                    colors[index % colors.count]
                        .overlay(
                            Text("\(index)")
                        )
                        .frame(height: 100)
                }
            }
        }
        .embedInNavigation()
    }
}

struct Adaptive_Previews: PreviewProvider {
    static var previews: some View {
        Adaptive(colors: [.red, .orange, .yellow, .green, .blue, .purple, .gray])
    }
}
