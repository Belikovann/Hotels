//
//  PriceView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct PriceView: View {
    
    let rubleSymbol = "\u{20BD}"
    var price: String
    var priceForIt: String
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text("от \(price)\(rubleSymbol)")
                .font(.custom("SF Pro Display", size: 30))
            Text("\(priceForIt)")
                .font(.custom("SF Pro Display", size: 14))
                .foregroundColor(.gray)
        }    }
}


struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(price: "136 374", priceForIt: "за тур с перелетом")
    }
}
