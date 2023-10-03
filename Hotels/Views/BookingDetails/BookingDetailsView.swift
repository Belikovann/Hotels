//
//  BookingDetailsView.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//

import SwiftUI



struct BookingDetailsView: View {
    
    var additionalDetails: [String : String] = [:]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [
                GridItem(.flexible(), alignment: .leading),
                GridItem(.flexible(), alignment: .leading)
            ], spacing: 10) {
                ForEach(Array(additionalDetails), id: \.key) { element in
                                    Text(element.key)
                                        .foregroundColor(.gray)
                                    Text(element.value)
                                        .foregroundColor(.black)
                        .foregroundColor(.black)
                }
            }.modifier(CustTextStyle(size: 16))
        }
    }
}

struct BookingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDetailsView(additionalDetails: [
            "Bылет из" : "Санкт - Петербург",
            "Страна, город" : "Египет",
            "Даты": "19.09.2023-27.09.2023",
            "Количество ночей": "7 ночей",
            "Отель": "Steigenberger Makadi",
            "Номер": "Стандартный с видом на бассейн или сад",
            "Питание" : "Все включено"
        ])
    }
}



