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
                FacilitiesCellView(title: "Что включено", icon: "checkmark.square")
                FacilitiesCellView(title: "Что не включено", icon: "xmark.square")
            }
        }
    }
    
    
    struct FacilitiesCellView: View {
        let title: String
        let icon: String
        
        var body: some View {
            Button(action: {}) {
                HStack{
                    Image(systemName: "\(icon)")
                        .font(.title3)
                        .foregroundColor(.black)
                    VStack(alignment: .leading) {
                        Text("\(title)")
                            .foregroundColor(.black)
                            .font(.custom("SF Pro Display", size: 16))
                        Text("Самое необходимое")
                            .foregroundColor(.gray)
                            .font(.custom("SF Pro Display", size: 14))
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
