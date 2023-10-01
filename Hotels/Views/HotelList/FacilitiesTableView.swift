//
//  FacilitiesTableView.swift
//  Hotels
//
//  Created by Аня Беликова on 16.09.2023.
//

import SwiftUI

struct FacilitiesTableView: View {
    
    var body: some View {
        VStack(spacing: 10) {
            FacilitiesCellView(title: "Удобства", icon: "face.smiling")
            Divider()
            FacilitiesCellView(title: "Что включено", icon: "checkmark.square")
            Divider()
            FacilitiesCellView(title: "Что не включено", icon: "xmark.square")
        }
        .background(Color(red: 251 / 255, green: 251 / 255, blue: 252 / 255, opacity: 1))
        .cornerRadius(10)
    }
    }
    
    
    struct FacilitiesCellView: View {
        let title: String
        let icon: String
        
        var body: some View {
            Button(action: {}) {
                HStack{
                    Image(systemName: "\(icon)")
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                        .clipShape(Rectangle())
                        
                    VStack(alignment: .leading) {
                        Text("\(title)")
                            .foregroundColor(.black)
                            .modifier(CustTextStyle(size: 16))
                        Text("Самое необходимое")
                            .foregroundColor(.gray)
                            .modifier(CustTextStyle(size: 14))
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                }
            }
            
        }
    }

struct FacilitiesTableView_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesTableView()
    }
}
