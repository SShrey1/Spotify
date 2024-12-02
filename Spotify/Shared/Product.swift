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

// MARK: - Product
struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String
    let category: Category
    let images: [String]
    let thumbnail: String
    
//    let tags: [String]
//
//    let sku: String
//    let weight: Int
//    let dimensions: Dimensions
//    let warrantyInformation, shippingInformation: String
//    let availabilityStatus: AvailabilityStatus
//    let reviews: [Review]
//    let returnPolicy: ReturnPolicy
//    let minimumOrderQuantity: Int
//    let meta: Meta
    
}

enum Category: String, Codable {
    case beauty = "beauty"
    case fragrances = "fragrances"
    case furniture = "furniture"
    case groceries = "groceries"
}
