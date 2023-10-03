//
//  PriceView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct PriceView: View {
    
    let rubleSymbol = "\u{20BD}"
    var price: Int
    var priceForIt: String
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text("от \(String(price))\(rubleSymbol)")
                .modifier(CustTextStyle(size: 30))
                
            Text("\(priceForIt)")
                .modifier(CustTextStyle(size: 16))
                .foregroundColor(.gray)
        }    }
}


struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(price: 136374, priceForIt: "за тур с перелетом")
    }
}
