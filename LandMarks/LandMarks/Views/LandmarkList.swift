//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 28.07.2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a LandMark")
        }
    }
}

#Preview {
    LandmarkList()
}
