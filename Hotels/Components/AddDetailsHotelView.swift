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
                            
                                DescriptionTagView(descriptionTag: "3- я линия")
                                DescriptionTagView(descriptionTag: "Платный Wi-Fi в фойе")
                           
                                DescriptionTagView(descriptionTag: "30 км до аэропорта")
                                DescriptionTagView(descriptionTag: "1 км для пляжа")
                            
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
