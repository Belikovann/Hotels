//
//  HotelGalleryView.swift
//  Hotels
//
//  Created by Аня Беликова on 01.10.2023.
//
import SwiftUI

struct HotelGalleryView: View {
    let hotel: Hotel

    var body: some View {
        TabView {
            ForEach(hotel.imageUrls, id: \.self) { imageUrl in
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
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct HotelGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        HotelGalleryView(hotel: Hotel.example)
    }
}

