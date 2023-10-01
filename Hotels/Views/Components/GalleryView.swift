//
//  GalleryView.swift
//  Hotels
//
//  Created by Аня Беликова on 19.09.2023.
//

import SwiftUI

struct GalleryView: View {
    let  images: [Image] = [
        Image(systemName: "star.fill"),
        Image(systemName: "pencil"),
        Image(systemName: "trash.fill")
        ]

    @State private var currentIndex = 0

    var body: some View {
            VStack {
                TabView(selection: $currentIndex) {
                    ForEach(images.indices, id: \.self) { index in
                        images[index]
                            .resizable()
                            .cornerRadius(20)
                            .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
    }
}


struct GalleryView_Previews: PreviewProvider{
    
    static var previews: some View{
        GalleryView()
    }
}
