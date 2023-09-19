//
//  BuyerView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI


struct ClientView: View {

    @State var client = Client()
    @State private var phone = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Информация о покупателе")
                .font(.custom("SF Pro Display", size: 22))
                .bold()
            TextField("+7 (XXX) XXX-XX-XX", text: $phone)
                   .keyboardType(.numberPad)
                   .onChange(of: phone) { newValue in
                       if newValue.count > 12 {
                           phone = String(newValue.prefix(12))
                       }
                   }
                   .onAppear {
                        phone = "+7"
                               }
                .textFieldStyle(CustomTFStyle())
            TextField("Почта", text: $client.email)
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
    }
}
