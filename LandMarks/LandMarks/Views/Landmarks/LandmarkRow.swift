//
//  LandmarkRow.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 28.07.2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandMark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[1])
        LandmarkRow(landmark: ModelData().landmarks[2])
    }
}
