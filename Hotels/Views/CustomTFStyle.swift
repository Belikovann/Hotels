//
//  TextFieldView.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI

struct CustomTFStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color(red: 246 / 255, green: 246 / 255, blue: 249 / 255, opacity: 1))
            .foregroundColor(.black)
            .cornerRadius(10)
    }
    
}





