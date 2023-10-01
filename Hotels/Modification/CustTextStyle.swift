//
//  CustTextStyle.swift
//  Hotels
//
//  Created by Аня Беликова on 01.10.2023.
//

import SwiftUI

struct CustTextStyle: ViewModifier {
    var size: Int
    
    func body(content: Content) -> some View {
        content
            .font(.custom("SF Pro Display", size: CGFloat(size)))
    }
}
