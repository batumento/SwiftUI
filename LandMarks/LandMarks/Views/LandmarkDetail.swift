//
//  ContentView.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: LandMark

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.largeTitle.bold())

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[2])
}
