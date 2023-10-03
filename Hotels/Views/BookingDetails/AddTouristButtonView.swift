//
//  AddTouristButtonView.swift
//  Hotels
//
//  Created by Аня Беликова on 21.09.2023.
//
//
import SwiftUI

struct AddTouristButtonView: View {
    @State private var touristList: [Int] = []


    var body: some View {
        Button(action: {}) {
            HStack {
                Text("Добавить туриста")
                    .foregroundColor(.black)
                    .modifier(CustTextStyle(size: 22))
                Spacer()
                Image(systemName: "plus.app.fill")
                    .font(.title)
            }
//            ForEach(touristList.indices, id: \.self) { index in
//               touristList("турист", isExpanded: $touristList[index])
//            }
        }
    }
    func addNewTourist() {
        touristList.append(1)
    }
}

struct AddTouristButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddTouristButtonView()
    }
}
