//
//  BookingDetailsView.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//

import SwiftUI



struct BookingDetailsView: View {
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Bылет из")
                Text("Страна, город")
                Text("Даты")
                Text("Количество ночей")
                Text("Отель")
                Text("Номер")
                Text("Питание")
            }
            .foregroundColor(.gray)
            Spacer()
            VStack(alignment: .leading, spacing: 15) {
                Text("Санкт - Петербург")
                Text("Египет")
                Text("19.09.2023-27.09.2023")
                Text("7 ночей")
                Text("Steigenberger Makadi")
                Text("Стандартный с видом на бассейн или сад")
                Text("Все включено")
            }
            
        }.font(.custom("SF Pro Display", size: 16))
            
        
    }
}

struct BookingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDetailsView()
    }
}

