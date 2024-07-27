//
//  ContentView.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI
import CoreLocation
import MapKit

struct ContentView: View {
    
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Hagia Sophia Mosque")
                    .font(.largeTitle.bold())
                HStack {
                    Text("Hagia Sophia Holy Wisdom")
                        .font(.subheadline)
                    Spacer()
                    Text("Istanbul")
                        .font(.subheadline)
                }
                Divider()
                Text("About Hagia Sophia")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
            .onAppear {
                CLLocationManager().requestWhenInUseAuthorization()
            }
        }
    }
}

#Preview {
    ContentView()
}
