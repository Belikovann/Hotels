//
//  RoomGalleryView.swift
//  Hotels
//
//  Created by Аня Беликова on 02.10.2023.
//

import SwiftUI

struct RoomGalleryView: View {
    let room: Room
    
    var body: some View {
        TabView {
            ForEach(room.imageUrls, id: \.self) { imageUrl in
                AsyncImage(url: URL(string: imageUrl)) { phase in
                    switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        default:
                            ProgressView()
                        }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}


struct RoomGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        RoomGalleryView(room: Room.example)
    }
}




 
