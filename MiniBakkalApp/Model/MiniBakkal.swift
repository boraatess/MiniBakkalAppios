//
//  MiniBakkal.swift
//  MiniBakkalApp
//
//  Created by bora on 10.01.2021.
//

import Foundation

struct MiniBakkal : Decodable {
    
    let id: String
    let name: String
    let price: Float
    let imageUrl: String
    let stock: Int
    let currency: String
    
}
