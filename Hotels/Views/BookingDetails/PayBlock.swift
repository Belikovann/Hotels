//
//  PayBlock.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI

struct PayBlock: View {
    
    var tourPrice = 186600
    var fuelPrice = 9300
    var servicePrice = 2136
    let rubleSymbol = "\u{20BD}"
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Тур")
                    .foregroundColor(.gray)
                Spacer()
                Text("\(tourPrice)" + "\(rubleSymbol)")
            }
            HStack {
                Text("Топливный сбор")
                    .foregroundColor(.gray)
                Spacer()
                Text("\(fuelPrice)" + "\(rubleSymbol)")
            }
            HStack {
                Text("Сервисный сбор")
                    .foregroundColor(.gray)
                Spacer()
                Text("\(servicePrice)" + "\(rubleSymbol)")
            }
            HStack {
                Text("К оплате")
                    .foregroundColor(.gray)
                Spacer()
                Text("\(tourPrice + fuelPrice + servicePrice)" + "\(rubleSymbol)")
                    .foregroundColor(.accentColor)
            }
        }
    }
}


struct PayBlock_Previews: PreviewProvider {
    
    static var previews: some View {
        PayBlock()
    }
}
