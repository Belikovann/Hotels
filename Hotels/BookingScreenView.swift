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

    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(alignment: .leading, spacing: 10){
                    RatingView()
                    NameAndAddressView()
                    Divider()
                    ClientView()
                    Divider()
                    TouristView(title: "Первый турист")
                    TouristView(title: "Второй турист")
                    TouristView(title: "Добавить туриста")
                    PayBlock()
                }

                ButtonView(title: "Забронировать") { coordinator.navigateTo(screen: .order)}
                    
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
        }
        .padding()
    }
}


struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingScreenView()
    }
}
