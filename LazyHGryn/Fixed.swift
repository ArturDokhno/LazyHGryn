//
//  Fixed.swift
//  LazyHGryn
//
//  Created by Артур Дохно on 09.02.2022.
//

import SwiftUI

struct Fixed: View {
    let colors:[Color]
    let columns: [GridItem] = [GridItem(.fixed(150), spacing: 0),GridItem(.fixed(100),spacing: 40),GridItem(.fixed(100))]
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, alignment: .leading) {
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

struct Fixed_Previews: PreviewProvider {
    static var previews: some View {
        Fixed(colors: [.red, .orange, .yellow, .green, .blue, .purple, .gray])
    }
}
