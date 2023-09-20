//
//  HotelListScreenView.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI

struct HotelListScreenView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    GalleryView()
                        .frame(width: 300, height: 257)
                    
                    RatingView()
                    NameAndAddressView()
                    PriceView(price: "136 374", priceForIt: "за тур с перелетом")
                    
                    AddDetailHotelView()
                }
            }
            ButtonView(title: "Выбрать номер", action: {coordinator.navigateTo(screen: .rooms)})
                .padding()
            
                .navigationTitle("Отель")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}



struct HotelListScreenView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        HotelListScreenView()
    }
}
