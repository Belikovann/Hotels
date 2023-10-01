//
//  RatingView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//
import SwiftUI

struct RatingView: View {
    
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .foregroundColor(.orange)
                .opacity(0.2)
                .cornerRadius(10.0)
                .frame(width: 180, height: 40)
            HStack {
                Image(systemName: "star.fill")
                Text("5 Превосходно")
                    .modifier(CustTextStyle(size: 16))
            }
            .foregroundColor(.orange)
        }
    }
}

struct RatingView_Previews: PreviewProvider{
    static var previews: some View {
        RatingView()
    }
}
