//
//  TouristView.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI


struct TouristView: View {
    
    @State private var isExpanded = false
    @EnvironmentObject private var clientManager: ClientManager

    
    var body: some View {
        VStack {
            DisclosureGroup(
                isExpanded: $isExpanded,
                content: {
                    TextField("Имя", text: $clientManager.client.name)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Фамилия", text: $clientManager.client.surname)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Дата рождения", text: $clientManager.client.dataOfBirth)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Гражданство", text: $clientManager.client.citizenship)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Номер загранпаспорта", text: $clientManager.client.passportNumber)
                        .textFieldStyle(CustomTFStyle())
                    TextField("Срок действия загранпаспорта", text: $clientManager.client.dateOfpassport)
                        .textFieldStyle(CustomTFStyle())
                },
                label: {
                    Text("Первый турист")
                        .foregroundColor(.black)
                        .font(.custom("SF Pro Display", size: 22))
                }
            )
            .padding()
        }
    }
}


struct TouristView_Previews: PreviewProvider {
    
    static var previews: some View {
        TouristView()
            .environmentObject(ClientManager())

    }
}
