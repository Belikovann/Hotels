//
//  BuyerView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import Combine
import SwiftUI


struct ClientView: View {

    @EnvironmentObject private var clientManager: ClientManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Информация о покупателе")
                .font(.custom("SF Pro Display", size: 22))
                .bold()
            TextField("Номер телефона", text: $clientManager.client.phone)
                .textFieldStyle(CustomTFStyle())
            TextField("Почта", text: $clientManager.client.email)
                .textFieldStyle(CustomTFStyle())
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .font(.custom("SF Pro Display", size: 14))
                .foregroundColor(.gray)
                
            
        }
    }
}





struct ClientView_Previews: PreviewProvider {
    
    static var previews: some View {
        ClientView()
            .environmentObject(ClientManager())
    }
}
