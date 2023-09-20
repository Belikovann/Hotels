//
//  File.swift
//  Hotels
//
//  Created by Аня Беликова on 15.09.2023.
//

import SwiftUI

struct AddDetailHotelView: View {
    
    var descriptionTags = [
        "3-я линия",
        "Платный Wi-Fi в фойе",
        "30 км до аэропорта",
        "1 км до пляжа"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            LazyVGrid(columns: [GridItem(.fixed(200)), GridItem(.fixed(200))], alignment: .leading, spacing: 10) {
                ForEach(descriptionTags, id: \.self) { tag in
                    DescriptionTagView(descriptionTag: tag)
                }
            }
            Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет! ")
                .font(.custom("SF Pro Display", size: 16))
            FacilitiesTableView()
        }
    }
}

struct FacilitiesCellView_Previews: PreviewProvider {
    static var previews: some View {
        AddDetailHotelView()
    }
}
