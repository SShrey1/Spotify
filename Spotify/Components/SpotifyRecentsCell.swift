//
//  SpotifyRecentsCell.swift
//  Spotify
//
//  Created by user@59 on 12/09/1946 Saka.
//

import SwiftUI

struct SpotifyRecentsCell: View {
    
    var imageName : String = Constants.randomImage
    var title : String = "Some random String"
    var body: some View {
        HStack(spacing : 16){
            ImageLoaderView(urlString: imageName)
                .frame(width: 55,height: 55)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
        }
            .foregroundStyle(.red)
    }
}

#Preview {
    ZStack{
        Color.black.ignoresSafeArea()
        
        VStack{
            HStack{
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
            HStack{
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
        }
    }
}
