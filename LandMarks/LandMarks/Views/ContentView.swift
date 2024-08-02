//
//  ContentView.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tag(Tab.featured)
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
            LandmarkList()
                .tag(Tab.list)
                .tabItem { Label("List", systemImage: "list.bullet") }
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
