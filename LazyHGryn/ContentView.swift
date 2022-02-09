//
//  ContentView.swift
//  LazyHGryn
//
//  Created by Артур Дохно on 09.02.2022.
//

import SwiftUI

struct ContentView: View {
    let colors:[Color] = [.red, .orange, .yellow, .green, .blue, .purple, .gray]
    var body: some View {
            TabView {
                Flexible(colors: colors)
                    .tabItem {
                        Image(systemName: "1.circle.fill")
                        Text("Flexible")
                    }
                Fixed(colors: colors)
                    .tabItem {
                        Image(systemName: "2.circle.fill")
                        Text("Fixed")
                    }
                Adaptive(colors: colors)
                    .tabItem {
                        Image(systemName: "3.circle.fill")
                        Text("Adaptive")
                    }
                Pinned(colors: colors)
                    .tabItem {
                        Image(systemName: "4.circle.fill")
                        Text("Pinned Sections")
                    }
                HGrid(colors: colors)
                    .tabItem {
                        Image(systemName: "5.circle.fill")
                        Text("LazyHGrid")
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
