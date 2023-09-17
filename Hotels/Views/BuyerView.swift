//
//  BuyerView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import Combine
import SwiftUI


struct BuyerView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Информация о покупателе")
                .font(.custom("SF Pro Display", size: 22))
                .bold()
        }
    }
}



struct BuyerView_Previews: PreviewProvider {
    
    static var previews: some View {
        BuyerView()
    }
}
