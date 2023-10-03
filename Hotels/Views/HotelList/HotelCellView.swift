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
        VStack(alignment: .leading, spacing: 10){
            RatingView()
            NameAndAddressView(name: hotel.name, address: hotel.address)
            PriceView(price: hotel.minimalPrice, priceForIt: hotel.priceForIt)
            Text("Об отеле")
                .font(.title2)
            TagView(descriptionTags: hotel.aboutTheHotel.peculiarities)
            Text("\(hotel.aboutTheHotel.description)")
                .modifier(CustTextStyle(size: 16))
            FacilitiesTableView()
        }
    }
}


struct HotelCellView_Previews: PreviewProvider {
    static var previews: some View {
        HotelCellView(hotel: Hotel.example)
    }
}
