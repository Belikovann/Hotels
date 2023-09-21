//
//  BookingView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI

struct BookingScreenView: View {
    
    @EnvironmentObject private var clientManager: ClientManager
    @EnvironmentObject var coordinator: Coordinator
    @ObservedObject var networkManager = NetworkManager.shared
    let apiURL = URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0")!

    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    VStack(alignment: .leading) {
                        RatingView()
                        NameAndAddressView(name: networkManager.hotel?.name ?? "Лучший пятизвездочный отель в Хургаде, Египет", adress: networkManager.hotel?.adress ?? "Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                    }
                    Divider()
                    BookingDetailsView()
                    Divider()
                    ClientView()
                    TouristView(title: "Первый турист")
                    AddTouristButtonView()
                    Divider()
                    PayBlock()
                    }

               

                    .navigationTitle("Бронирование")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(
                        leading:
                            Button(action: {
                                coordinator.navigateBack()
                            }) {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(.black)
                            }
                        )
            }
            ButtonView(title: "Забронировать") { coordinator.navigateTo(screen: .order)}
        }
        .padding()
    }
}


struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingScreenView()
    }
}
