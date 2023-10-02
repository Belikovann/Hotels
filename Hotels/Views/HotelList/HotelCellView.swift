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
            HotelGalleryView(hotel: hotel)
            
            VStack(alignment: .leading) {
                RatingView()
                NameAndAddressView(name: hotel.name, address: hotel.address)
                PriceView(price: hotel.minimalPrice, priceForIt: hotel.priceForIt)
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
