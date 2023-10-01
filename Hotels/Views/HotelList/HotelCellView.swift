//
//  HotelCellView.swift
//  Hotels
//
//  Created by Аня Беликова on 01.10.2023.
//

import SwiftUI

struct HotelCellView: View {
    let hotel: Hotel
    
    var body: some View {
        
        VStack{
            LazyHGrid(rows: [GridItem(), GridItem()]){
                ForEach(hotel.imageUrls, id: \.self) { imageUrl in
                    HotelGalleryView(imageURL: imageUrl)
                }
            }
                    VStack(alignment: .leading) {
                        RatingView()
                        NameAndAddressView(name: hotel.name, adress: hotel.adress)
                        //                            PriceView(price: <#T##Int#>, priceForIt: <#T##String#>)
                    }
                    TagView()
                    AddDetailHotelView()
                }
    }
}
    
struct HotelCellView_Previews: PreviewProvider {
    static var previews: some View {
        HotelCellView(hotel: Hotel.example)
    }
}
