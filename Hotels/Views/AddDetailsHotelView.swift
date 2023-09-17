//
//  File.swift
//  Hotels
//
//  Created by Аня Беликова on 15.09.2023.
//

import SwiftUI

struct AddDetailHotelView: View {
    
    var body: some View {
        NavigationStack {
                VStack(alignment: .leading, spacing: 10) {
                            Text("Об отеле")
                                .font(.custom("SF Pro Display", size: 22))
                            HStack {
                                DescriptionTagView(descriptionTag: "3- я линия")
                                    .frame(width: 100)
                                DescriptionTagView(descriptionTag: "Платный Wi-Fi в фойе")
                                    .frame(width: 200)
                            }
                            HStack {
                                DescriptionTagView(descriptionTag: "30 км до аэропорта")
                                    .frame(width: 170)
                                DescriptionTagView(descriptionTag: "1 км для пляжа")
                                    .frame(width: 150)
                            }
                            Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет! ")
                                .font(.custom("SF Pro Display", size: 16))
                            FacilitiesTableView()
                }
            }
    }
}


struct FacilitiesCellView_Previews: PreviewProvider {
    static var previews: some View {
        AddDetailHotelView()
    }
}
