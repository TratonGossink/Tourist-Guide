//
//  City.swift
//  Tourist Guide
//
//  Created by Traton Gossink on 6/28/23.
//

import Foundation


struct City: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
