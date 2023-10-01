//
//  HotelGalleryView.swift
//  Hotels
//
//  Created by Аня Беликова on 01.10.2023.
//

//import SwiftUI
//
//struct HotelGalleryView: View {
//    let imageURL: String
//    let hotel: Hotel
//
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//                                LazyHStack(spacing: 0) {
//                                    ForEach(imageURL, id: \.self) { imageUrl in
//                                        AsyncImage(url: URL(string: hotel.imageUrls.first ?? "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg"
//                                                           )) { photo in
//                                            switch photo {
//                                                case .success(let image):
//                                                    image
//                                                        .resizable()
//                                                        .clipShape(RoundedRectangle(cornerRadius: 10))
//                                                default:
//                                                    ProgressView()
//                                                        .frame(width: 300, height: 257)
//                                                        .clipShape(RoundedRectangle(cornerRadius: 10))
//                                            }
//
//                                        }
//                                    }
//                                    }
//
//                        }
//                    }
//
//}
//
//struct HotelGalleryView_Previews: PreviewProvider {
//    static var previews: some View {
//        HotelGalleryView(imageURL: "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg", hotel: Hotel.example)
//    }
//}
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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
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
