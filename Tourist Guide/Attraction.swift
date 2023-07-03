//
//  Attraction.swift
//  Tourist Guide
//
//  Created by Traton Gossink on 6/28/23.
//

import Foundation


struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDesc: String
    var imageName: String
    var latLong: String
    
}
