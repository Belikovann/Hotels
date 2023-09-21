//
//  TouristView.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI


struct TouristView: View {
    
    @State private var isExpanded = false
    @State var tourist = Client()
    
    var title: String
    
    var body: some View {
        VStack {
            DisclosureGroup(
                isExpanded: $isExpanded,
                content: {
                    TextField("Имя", text: $tourist.name)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Фамилия", text: $tourist.surname)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Дата рождения", text: $tourist.dataOfBirth)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Гражданство", text: $tourist.citizenship)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Номер загранпаспорта", text: $tourist.passportNumber)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Срок действия загранпаспорта", text: $tourist.dateOfPassport)
                        .textFieldStyle(CustomTFStyle())
                },
                label: {
                        Text("\(title)")
                            .foregroundColor(.black)
                            .font(.custom("SF Pro Display", size: 22))
                            .padding(10)
                }
            )
           
                    }
        }
    }


struct TouristView_Previews: PreviewProvider {
    
    static var previews: some View {
        TouristView(title: "Турист")
    }
}



