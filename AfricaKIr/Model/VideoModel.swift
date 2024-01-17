//
//  VideoModel.swift
//  AfricaKIr
//
//  Created by Test on 20.09.23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
