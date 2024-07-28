//
//  LandMark.swift
//  LandMarks
//
//  Created by Batuhan Emiroğlu on 28.07.2024.
//

import Foundation
import SwiftUI
import MapKit

struct LandMark : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    //İmage
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    //Coordinate
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
