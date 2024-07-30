//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
