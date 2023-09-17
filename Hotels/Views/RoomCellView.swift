//
//  RoomView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI

struct RoomCellView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "peacesign")
                .resizable()
                .frame(width: 343, height: 257)
            .cornerRadius(20)
            Text("Стандартный номер с видом на бассейн")
                .font(.custom("SF Pro Display", size: 22))
            HStack {
                DescriptionTagView(descriptionTag: "Включен только завтрак")
                    .frame(width: 200)
                DescriptionTagView(descriptionTag: "Кондиционер")
                    .frame(width: 110)
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
            ButtonView(title: "Выбрать номер", action: {})
        }
        
    }
}



struct RoomCellView_Previews: PreviewProvider {
    static var previews: some View {
        RoomCellView()
    }
}
