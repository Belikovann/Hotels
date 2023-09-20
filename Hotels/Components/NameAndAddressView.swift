//
//  NameAndAdressView.swift
//  Hotels
//
//  Created by Аня Беликова on 13.09.2023.
//

import SwiftUI

struct NameAndAddressView: View {
    @ObservedObject var networkManager = NetworkManager.shared
    let apiURL = URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0")!

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(networkManager.hotel?.name ?? "Название")")
                .font(.custom("SF Pro Display", size: 22))
            
            Button(action: {}) {
                Text("\(networkManager.hotel?.adress ?? "Адрес")")
                    .foregroundColor(.accentColor)
                    .font(.custom("SF Pro Display", size: 14))
            }
        }
        .onAppear {
            // Вызываем fetchData при появлении представления
            Task {
                do {
                    let result = try await networkManager.fetchData(from: apiURL)
                    networkManager.hotel = result.results[0]
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}


struct NameAndAddressView_Previews: PreviewProvider {
    
    static var previews: some View {
        NameAndAddressView()
    }
}




    
 
