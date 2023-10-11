//
//  RatingView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//
import SwiftUI

struct RatingView: View {
    var rating: Int
    var ratingName: String
    
    var body: some View {
            HStack {
                Image(systemName: "star.fill")
                Text("\(rating) \(ratingName)")
                    .modifier(CustTextStyle(size: 16))
            }
            .padding()
            .foregroundColor(.orange)
            .background(
                        Rectangle()
                            .foregroundColor(.orange)
                            .opacity(0.2)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .cornerRadius(10)
                    )
    }
}

struct RatingView_Previews: PreviewProvider{
    static var previews: some View {
        RatingView(rating: 5, ratingName: "норм")
    }
}
