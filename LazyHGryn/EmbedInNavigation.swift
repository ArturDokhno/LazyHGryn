//
//  EmbedInNavigation.swift
//  LazyHGryn
//
//  Created by Артур Дохно on 09.02.2022.
//

import SwiftUI

struct EmbedInNavigation: ViewModifier {
    @State var screenWidth:String = ""
    func body(content: Content) -> some View {
        NavigationView {
            VStack {
                Text(screenWidth)
                content
            }
             .navigationTitle("Lazy#Grids")
        }
        .onReceive(NotificationCenter.Publisher(center: .default, name: UIDevice.orientationDidChangeNotification)) { _ in
            screenWidth = "Screen Width: \(String(format: "%.0f",UIScreen.main.bounds.size.width))"
        }
        .onAppear {
            screenWidth = "Screen Width: \(String(format: "%.0f",UIScreen.main.bounds.size.width))"
        }
    }
}
extension View {
    func embedInNavigation() -> some View {
        self.modifier(EmbedInNavigation())
    }
}
