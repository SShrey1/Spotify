//
//  SpotifyHomeView.swift
//  Spotify
//
//  Created by user@59 on 11/09/1946 Saka.
//

import SwiftUI

struct SpotifyHomeView: View {
    
    @State private var currentUser : User? = nil
    @State private var selectedCategory : Category? = nil
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical){
                LazyVStack(spacing: 1,pinnedViews: [.sectionHeaders],content: {
                    Section{
                        
                        VStack{
                            LazyVStack{
                                
                            }
                        }
                        ForEach(0..<20){ _ in
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 200, height : 200)
                        }
                    } header : {
                        header
                    }
                    })
                .padding(.top, 8)
                    
            }
            .scrollIndicators(.hidden)
            .clipped()
    
        }
        .task {
            await getData()
        }
        .toolbar(.hidden, for : .navigationBar)
    }
    
    private func getData() async {
        do {
            currentUser = try await DataBaseHelper().getusers().first
    //        products = try await DataBaseHelper().getProducts()
        } catch {
            
        }
    }
    
    private var header: some View {
        HStack(spacing : 16) {
            ZStack{
                if let currentUser {
                    ImageLoaderView(urlString : currentUser.image )
                        
                        .background(.spotifyWhite)
                        .clipShape(Circle())
                        .onTapGesture {
                            
                        }
                }
            }
            .frame(width: 35, height: 35)
            
            
            ScrollView(.horizontal){
                HStack(spacing: 8) {
                    ForEach(Category.allCases, id : \.self
                    ) { category in
                        SpotifyCategoryCell(title: category.rawValue.capitalized, isSelected: category == selectedCategory)
                            .onTapGesture {
                                selectedCategory = category
                            }
                            
                        
                    }
                }
                .padding(.horizontal, 16)
            }
            .scrollIndicators(.hidden)
            
        }
        .padding(.vertical, 24)
        .background(Color.spotifyBlack)
        .padding(.leading, 8)
    }
}

#Preview {
    SpotifyHomeView()
}
