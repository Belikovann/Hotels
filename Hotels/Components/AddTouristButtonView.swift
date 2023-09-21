//
//  AddTouristButtonView.swift
//  Hotels
//
//  Created by Аня Беликова on 21.09.2023.
//

import SwiftUI

struct AddTouristButtonView: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Text("Добавить туриста")
                Image(systemName: "plus.app.fill")
            }
        }
    }
}

struct AddTouristButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddTouristButtonView()
    }
}
