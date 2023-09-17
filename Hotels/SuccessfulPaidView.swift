//
//  SuccessfulPaidView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct SuccessfulPaidView: View {
    
    var body: some View {
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
            ButtonView(title: "Супер!", action: {})
                .padding()
        }
    }
}


struct SuccessfulPaidView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulPaidView()
    }
}


