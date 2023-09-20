//
//  HotelListScreenView.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI

struct HotelListScreenView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    @ObservedObject var networkManager = NetworkManager.shared
    let apiURL = URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0")!
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack{
                    GalleryView()
                        .frame(width: 300, height: 257)
                    VStack(alignment: .leading) {
                        RatingView()
                        NameAndAddressView(name: networkManager.hotel?.name ?? "Лучший пятизвездочный отель в Хургаде, Египет", adress: networkManager.hotel?.adress ?? "Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                        PriceView(price: "136 374", priceForIt: "за тур с перелетом")
                    }
                    TagView()
                    AddDetailHotelView()
                }
                .padding()
            }
            ButtonView(title: "Выбрать номер", action: {coordinator.navigateTo(screen: .rooms)})
                .padding()
            
                .navigationTitle("Отель")
                .navigationBarTitleDisplayMode(.inline)
            
        }
        .onAppear {
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


struct HotelListScreenView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        HotelListScreenView()
    }
}
