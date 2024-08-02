//
//  CategoryHome.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 2.08.2024.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData

    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.landmarks)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        } detail: {
            Text("SelectMarks")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
