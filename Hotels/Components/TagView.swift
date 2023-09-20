//
//  TagView.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//

import SwiftUI

struct TagView: View {
    var descriptionTags = [
        "Платный Wi-Fi в фойе",
        "3-я линия",
        "30 км до аэропорта",
        "1 км до пляжа"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            LazyVGrid(columns: [GridItem(.fixed(190)), GridItem(.fixed(170))], alignment: .leading) {
                            ForEach(descriptionTags, id: \.self) { tag in
                                DescriptionTagView(descriptionTag: tag)
                            }
            }
        }
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}
