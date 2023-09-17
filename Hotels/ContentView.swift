//
//  ContentView.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                                    Image(systemName: "house")
                                        .resizable()
                                        .frame(width: 343, height: 257)
                                        .cornerRadius(20)
                                    RatingView()
                                    NameAndAddressView()
                                    PriceView(price: "136 374", priceForIt: "за тур с перелетом")
                                }
                    AddDetailHotelView()
                    .padding()
                }
                ButtonView(title: "Выбрать номер", action: {})
                    .padding()
            }
        .navigationBarTitle("Отель", displayMode: .inline)
        }
    }

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
