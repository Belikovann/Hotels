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
        Text("\(descriptionTag)")
            .font(.custom("SF Pro Display", size: 16))
            .foregroundColor(.gray)
            .padding(10)
            .background(
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .frame(height: 40)
                    .cornerRadius(10)
            )
            .lineLimit(1)
    }
}

struct DescriptionTagView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionTagView(descriptionTag: "description")
    }
}

