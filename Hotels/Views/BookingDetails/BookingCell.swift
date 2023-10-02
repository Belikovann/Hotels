//
//  BookingCell.swift
//  Hotels
//
//  Created by Аня Беликова on 02.10.2023.
//

import SwiftUI

struct BookingCell: View {
    let booking: Booking
    
    var body: some View {
        VStack {
            RatingView()
            NameAndAddressView(name: booking.hotelName, address: booking.hotelAddress)
            BookingDetailsView()
            ClientView()
            TouristView(title: "Первый турист")
            PayBlock()
            
        }
    }
}

struct BookingCell_Previews: PreviewProvider {
    static var previews: some View {
        BookingCell(booking: Booking.example)
    }
}
