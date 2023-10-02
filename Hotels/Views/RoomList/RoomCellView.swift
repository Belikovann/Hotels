//
//  RoomView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//
//
import SwiftUI

struct RoomCellView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    let room: Room
    
    var body: some View {
        VStack(alignment: .center) {
            RoomGalleryView(room: room)
                .frame(width: 343, height: 257)
            VStack(alignment: .leading) {
                Text(room.name)
                    .modifier(CustTextStyle(size: 22))
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
                            .modifier(CustTextStyle(size: 16))
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.blue)
                }
                PriceView(price: room.price, priceForIt: room.pricePer)
                ButtonView(title: "Выбрать номер", action: {coordinator.navigateTo(screen: .booking)})
            }
        }
        
    }
}



struct RoomCellView_Previews: PreviewProvider {
    static var previews: some View {
        RoomCellView(room: Room.example)
    }
}
