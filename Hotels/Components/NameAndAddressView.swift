//
//  NameAndAdressView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI
import Combine

struct NameAndAddressView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Text("Steigenberger Makadi")
                .font(.custom("SF Pro Display", size: 22))
            Button(action: {}) {
                Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                    .foregroundColor(.accentColor)
                    .font(.custom("SF Pro Display", size: 14))
            }
        }
        
    }
}




    
 
