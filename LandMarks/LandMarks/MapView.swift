//
//  MapView.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 27.07.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var location: MapCameraPosition?
    var body: some View {
        Map(initialPosition: .userLocation(fallback: .automatic))
            .mapControls {
                MapUserLocationButton()
                MapPitchToggle()
            }
    }
}

private var region: MKCoordinateRegion {
    MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
}

#Preview {
    MapView()
}
