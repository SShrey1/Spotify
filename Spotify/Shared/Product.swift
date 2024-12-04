//
//  Product.swift
//  Spotify
//
//  Created by user@59 on 11/09/1946 Saka.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let category: Category2
    let price, discountPercentage, rating: Double
    let stock: Int
   
    let brand: String?
   
    let images: [String]
    let thumbnail: String
}


enum Category2: String, Codable {
    case beauty = "beauty"
    case fragrances = "fragrances"
    case furniture = "furniture"
    case groceries = "groceries"
}
