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
    @State var isNewTouristVisible = false
    
    var title: String
    
    var body: some View {
        VStack {
            DisclosureGroup(
                isExpanded: $isExpanded,
                content: {
                    TextField("Имя", text: $tourist.name)
                        .textFieldStyle(CustTFStyle())
                    TextField("Фамилия", text: $tourist.surname)
                        .textFieldStyle(CustTFStyle())
                    TextField("Дата рождения", text: $tourist.dataOfBirth)
                        .textFieldStyle(CustTFStyle())
                    TextField("Гражданство", text: $tourist.citizenship)
                        .textFieldStyle(CustTFStyle())
                    TextField("Номер загранпаспорта", text: $tourist.passportNumber)
                        .textFieldStyle(CustTFStyle())
                    TextField("Срок действия загранпаспорта", text: $tourist.dateOfPassport)
                        .textFieldStyle(CustTFStyle())
                },
                label: {
                    Text("\(title)")
                        .foregroundColor(.black)
                        .modifier(CustTextStyle(size: 22))
                    Spacer()
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



