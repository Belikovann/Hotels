//
//  DescriptionTagView.swift
//  Hotels
//
//  Created by Аня Беликова on 15.09.2023.
//

import SwiftUI

struct DescriptionTagView: View {
    var descriptionTag: String
    
    var body: some View {
        ZStack(alignment: .center) {
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .cornerRadius(10.0)
                    .frame(height: 30)
            Text("\(descriptionTag)")
                .font(.custom("SF Pro Display", size: 16))
                .foregroundColor(.gray)
            }
        }
}

struct DescriptionTagView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionTagView(descriptionTag: "description")
    }
}
