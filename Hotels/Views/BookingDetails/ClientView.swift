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
                .modifier(CustTextStyle(size: 22))
                .bold()
            TextField("+7 (XXX) XXX-XX-XX", text: $phone,
                      onEditingChanged: { isEditing in
                if !isEditing {
                    validatePhoneNumber()
                }
            })
                .keyboardType(.numberPad)                
            TextField("Почта", text: $client.email)
                .textFieldStyle(CustTFStyle())
                .onChange(of: client.email) { _ in }
                .autocapitalization(.none)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .modifier(CustTextStyle(size: 14))
                .foregroundColor(.gray)
                
            
        }
    }
}

extension ClientView {
    var formattedPhoneNumber: String {
        let mask = "+7 (***) ***-**-**"
        var formattedValue = ""
        var valueIndex = phone.startIndex

        for char in mask where valueIndex < phone.endIndex {
            if char == "#" {
                formattedValue.append(phone[valueIndex])
                valueIndex = phone.index(after: valueIndex)
            } else {
                formattedValue.append(char)
            }
        }

        return formattedValue
    }
    
    private func validatePhoneNumber() {
        let sanitizedValue = phone.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
            
            if sanitizedValue.count >= 10 {
                print("Номер телефона валиден: +7 \(sanitizedValue)")
            } else {
//                isPhoneNumberValid = false
            }
    }
}

struct ClientView_Previews: PreviewProvider {
    
    static var previews: some View {
        ClientView()
    }
}


