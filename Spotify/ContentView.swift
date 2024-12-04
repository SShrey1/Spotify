//
//  ContentView.swift
//  Spotify
//
//  Created by user@59 on 10/09/1946 Saka.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    @State private var users : [User] = []
    @State private var products : [Product] = []
    var body: some View {
        ScrollView{
            VStack{
                ForEach(products) { product in
                    Text(product.title)
                }
            }
        }
        .padding()
        .task {
            await getData()
            
        }
    }
    
    private func getData() async {
        do {
            users = try await DataBaseHelper().getusers()
            products = try await DataBaseHelper().getProducts()
        } catch {
            
        }
    }
}

#Preview {
    ContentView()
}
