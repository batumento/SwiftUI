//
//  MapView.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    var body: some View {
        Map(position: .constant(.region(region)))
            .mapControls {
                MapUserLocationButton()
                MapPitchToggle()
            }
    }
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}



#Preview {
    MapView(coordinate: ModelData().landmarks[2].locationCoordinates)
}
