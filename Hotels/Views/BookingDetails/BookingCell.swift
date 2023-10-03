//
//  BookingCell.swift
//  Hotels
//
//  Created by Аня Беликова on 02.10.2023.
//

import SwiftUI

struct BookingCell: View {
    @EnvironmentObject var coordinator: Coordinator
    let booking: Booking
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            RatingView()
            NameAndAddressView(name: booking.hotelName, address: booking.hotelAddress)
            BookingDetailsView()
            ClientView()
            TouristView(title: "Первый турист")
            AddTouristButtonView()
            PayBlock(tourPrice: booking.tourPrice, fuelPrice: booking.fuelCharge, servicePrice: booking.serviceCharge)
            ButtonView(title: "Оплатить \(booking.tourPrice + booking.serviceCharge + booking.fuelCharge) руб.") { coordinator.navigateTo(screen: .order)}
            
        }
    }
}

struct BookingCell_Previews: PreviewProvider {
    static var previews: some View {
        BookingCell(booking: Booking.example)
    }
}
