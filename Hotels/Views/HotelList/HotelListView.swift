//
//  HotelListScreenView.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//
//
import SwiftUI

struct HotelListView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    @StateObject private var hotelListViewModel = HotelListViewModel()
    
    var body: some View {
        NavigationStack {
            
            if let hotel = hotelListViewModel.hotel {
                ScrollView {
                    HotelGalleryView(hotel: hotel)
                    HotelCellView(hotel: hotel)
                }
                .padding()
                ButtonView(title: "Выбрать номер", action: {coordinator.navigateTo(screen: .rooms)})
                    .padding()
                    .overlay {
                        if hotelListViewModel.isLoading {
                            ProgressView()
                        }
                    }
                    .navigationTitle("Отель")
                    .navigationBarTitleDisplayMode(.inline)
            } else {
                Text("Loading ...")
                    .foregroundColor(.gray)
            }
        }
        .onAppear {
            Task {
                await hotelListViewModel.fetchHotel()
            }
        }
    }
}


struct HotelListView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        HotelListView()
    }
}



