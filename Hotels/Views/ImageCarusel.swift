//
//  ImageCarusel.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct ImageCarisel: View {
    
    var body: some View {
        return ZStack {
            Rectangle()
                .fill(Color.black)
                .frame(height: 230)
                .cornerRadius(10)
                .padding(16)
        }
    }
}


