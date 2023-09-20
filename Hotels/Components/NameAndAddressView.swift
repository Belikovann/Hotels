//
//  NameAndAdressView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct NameAndAddressView: View {
    var name: String
    var adress: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .font(.custom("SF Pro Display", size: 22))
            
            Button(action: {}) {
                Text(adress)
                    .foregroundColor(.accentColor)
                    .font(.custom("SF Pro Display", size: 14))
            }
        }
    }
}


struct NameAndAddressView_Previews: PreviewProvider {
    
    static var previews: some View {
        NameAndAddressView(name: "название", adress: "адрес")
    }
}




    
 
