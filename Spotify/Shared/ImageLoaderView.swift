//
//  ImageLoaderView.swift
//  Spotify
//
//  Created by user@59 on 10/09/1946 Saka.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString : String = Constants.randomImage
    var resizingMode : ContentMode = .fill
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay( WebImage(url : URL(string : urlString))
                .resizable()
                .indicator(.activity)
                .aspectRatio(contentMode: .fill)
                .allowsHitTesting(false)
            )
            .clipped()
       
    }
}

#Preview {
   ImageLoaderView()
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
}
