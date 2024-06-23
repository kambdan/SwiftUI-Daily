//
//  ContentView.swift
//  daily
//
//  Created by Juan Cambizaca on 22/6/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
            
            Text("Settings Tab")
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }
        .accentColor(Color(red:65/255, green: 53/255, blue: 114/255))
    }
}

#Preview {
    ContentView()
}
