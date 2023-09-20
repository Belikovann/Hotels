//
//  SuccessfulPaidView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct OrderScreenView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Spacer()
                ZStack{
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: 94)
                    Text("🎉")
                        .font(.system(size: 44))
                }
                Text("Ваш заказ принят в работу")
                    .font(.custom("SF Pro Display", size: 22))
                    .bold()
                Text("Подтверждение заказа \(String(Int.random(in: 100000..<999999))) может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                    .multilineTextAlignment(.center)
                    .font(.custom("SF Pro Display", size: 16))
                    .foregroundColor(.gray)
                    .padding()
                Spacer()
                ButtonView(title: "Супер!", action: {coordinator.navigateTo(screen: .hotels)})
                    .padding()
            }
            .navigationBarBackButtonHidden(false)
            .navigationBarTitle("Заказ оплачен")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        coordinator.navigateBack()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                )
        }
    }
}


struct SuccessfulPaidView_Previews: PreviewProvider {
    static var previews: some View {
        OrderScreenView()
    }
}


