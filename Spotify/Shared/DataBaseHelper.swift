//
//  DataBaseHelper.swift
//  Spotify
//
//  Created by user@59 on 10/09/1946 Saka.
//

import Foundation

struct DataBaseHelper {
    
    func getProducts() async throws -> [Product] {
        guard let url = URL(string : "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let products = try JSONDecoder().decode(ProductArray.self, from: data)
        return products.products
        
    }
    
    func getusers() async throws -> [User] {
        guard let url = URL(string : "https://dummyjson.com/users") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let users = try JSONDecoder().decode(UserArray.self, from: data)
        return users.users
        
    }
}









//enum AvailabilityStatus: String, Codable {
//    case inStock = "In Stock"
//    case lowStock = "Low Stock"
//}
//

//
//// MARK: - Dimensions
//struct Dimensions: Codable {
//    let width, height, depth: Double
//}
//
//// MARK: - Meta
//struct Meta: Codable {
//    let createdAt, updatedAt: CreatedAt
//    let barcode: String
//    let qrCode: String
//}
//
//enum CreatedAt: String, Codable {
//    case the20240523T085621618Z = "2024-05-23T08:56:21.618Z"
//    case the20240523T085621619Z = "2024-05-23T08:56:21.619Z"
//    case the20240523T085621620Z = "2024-05-23T08:56:21.620Z"
//}
//
//enum ReturnPolicy: String, Codable {
//    case noReturnPolicy = "No return policy"
//    case the30DaysReturnPolicy = "30 days return policy"
//    case the60DaysReturnPolicy = "60 days return policy"
//    case the7DaysReturnPolicy = "7 days return policy"
//    case the90DaysReturnPolicy = "90 days return policy"
//}
//
//// MARK: - Review
//struct Review: Codable {
//    let rating: Int
//    let comment: String
//    let date: CreatedAt
//    let reviewerName, reviewerEmail: String
//}
//
