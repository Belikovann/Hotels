//
//  HotelCellView.swift
//  Hotels
//
//  Created by Аня Беликова on 01.10.2023.
//

import SwiftUI

struct HotelCellView: View {
    let hotel: Hotel
    @StateObject private var hotelListViewModel = HotelListViewModel()
    
    var body: some View {
        
        VStack{
            HotelGalleryView(hotel: hotel)
            VStack(alignment: .leading) {
                RatingView()
                NameAndAddressView(name: hotel.name, adress: hotel.adress)
                //                            PriceView(price: <#T##Int#>, priceForIt: <#T##String#>)
            }
            TagView()
            AddDetailHotelView()
        }
        .padding()
    }
}


    
struct HotelCellView_Previews: PreviewProvider {
    static var previews: some View {
        HotelCellView(hotel: Hotel.example)
    }
}
