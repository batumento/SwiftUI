//
//  CircleImage.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    var body: some View {
        image
            .frame(width: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 1.5)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("hiddenlake"))
}
