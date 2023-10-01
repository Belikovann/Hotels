
//  ButtonView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct ButtonView: View {
    
    @EnvironmentObject var coordinator: Coordinator 
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(.blue)
        .cornerRadius(15)

    }
}


struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some Action", action: {})
            .environmentObject(Coordinator())
    }
}
