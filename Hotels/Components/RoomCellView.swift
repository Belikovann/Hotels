//
//  RoomView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI

struct RoomCellView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack(alignment: .leading) {
            GalleryView()
                .frame(width: 300, height: 257)
            Text("Стандартный номер с видом на бассейн")
                .font(.custom("SF Pro Display", size: 22))
            HStack {
                DescriptionTagView(descriptionTag: "Включен только завтрак")
                DescriptionTagView(descriptionTag: "Кондиционер")
            }
            ZStack(alignment: .center) {
                
                Button(action: {}) {
                    Rectangle()
                        .foregroundColor(.blue)
                        .opacity(0.1)
                        .cornerRadius(5.0)
                    .frame(width: 200, height: 30)
                }
                HStack {
                    Text("Подробнее о номере")
                        .font(.custom("SF Pro Display", size: 16))
                    Image(systemName: "chevron.right")
                }
                .foregroundColor(.blue)
            }
            PriceView(price: "186 600", priceForIt: "За 7 ночей с перелетом")
            ButtonView(title: "Выбрать номер", action: {coordinator.navigateTo(screen: .booking)})
        }
        
    }
}



struct RoomCellView_Previews: PreviewProvider {
    static var previews: some View {
        RoomCellView()
    }
}
