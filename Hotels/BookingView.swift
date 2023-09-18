//
//  BookingView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI

struct BookingView: View {
    
    var data: [(String, String)] = [
            ("Вылет из","Значение 1"),
            ("Страна, город", "Значение 2"),
            ("Даты", "Значение 3"),
            ("Кол-во ночей", "Значение 4"),
            ("Отель", "Значение 5"),
            ("Номер", "Значение 6"),
            ("Питание", "значение 7")
            ]
    
    var body: some View {
        NavigationStack {
            
            List {
                VStack(alignment: .leading) { // Block of general data of hotel
                    RatingView()
                    NameAndAddressView()
                }
                
            }
            }
        }
    }

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
