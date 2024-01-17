//
//  LocationModel.swift
//  AfricaKIr
//
//  Created by Test on 21.09.23.
//

import Foundation
import MapKit

struct NationalParkLocations: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
