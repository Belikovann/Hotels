//
//  RatingView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI


struct RatingView {
    
    var body: some View {
        ZStack {
            Image(systemName: "star.fill")
            Text("5")
            Text("Превосходно")
        }
        .foregroundColor(.orange)
        .background(in: Rectangle())
    }
}
