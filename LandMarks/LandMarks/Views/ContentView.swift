//
//  ContentView.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI
import CoreLocation

struct ContentView: View {

    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
