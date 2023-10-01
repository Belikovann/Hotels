//
//  DetailCell.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//

import SwiftUI

struct DetailCell: View {
    
    let nameDescription: String
    let description: String
    
    var body: some View {
        HStack {
            Text(nameDescription)
                .foregroundColor(.gray)
            Spacer(minLength: 100)
            Text(description)
                .padding(.leading)
        }
        .modifier(CustTextStyle(size: 16))
        
    }
}

struct DetailCell_Previews: PreviewProvider {
    static var previews: some View {
        DetailCell(nameDescription: "Вылет из", description: "Санкт - Петербург")
    }
}
