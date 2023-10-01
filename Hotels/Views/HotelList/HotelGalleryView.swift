//
//  HotelGalleryView.swift
//  Hotels
//
//  Created by Аня Беликова on 01.10.2023.
//

import SwiftUI

struct HotelGalleryView: View {
    let imageURL: String

    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { photo in
            switch photo {
                case .success(let image):
                    image
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                default:
                    ProgressView()
                        .frame(width: 300, height: 257)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
        .padding()
    }
}

struct HotelGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        HotelGalleryView(imageURL:  "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg")
    }
}

