//
//  CategoryItem.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 2.08.2024.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: LandMark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .clipShape(
                    .rect(
                        topLeadingRadius: 8,
                        bottomLeadingRadius: 8,
                        bottomTrailingRadius: 8,
                        topTrailingRadius: 8
                    )
                )
            Text("\(landmark.name)")
                .font(.caption)
                .foregroundStyle(.primary)
        }
        .padding(15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
