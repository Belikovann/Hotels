//
//  TagView.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//

import SwiftUI

struct TagView: View {
    var descriptionTags: [String] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            LazyVGrid(columns: [GridItem(.fixed(190)), GridItem(.fixed(190))], alignment: .leading) {
                            ForEach(descriptionTags, id: \.self) { tag in
                                DescriptionTagView(descriptionTag: tag)
                            }
            }
        }
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(descriptionTags: [
            "Платный Wi-Fi в фойе",
            "3-я линия",
            "500 км до аэропорта",
            "10 км до пляжа"
        ]
        )
    }
}
