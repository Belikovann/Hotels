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
            List(hotelListViewModel.hotels) { hotel in
                        HotelCellView(hotel: hotel)
            }
            .listStyle(.plain)
            .overlay {
                if hotelListViewModel.isLoading {
                    ProgressView()
                }
            }
            .onAppear {
                if hotelListViewModel.hotels.isEmpty {
                    Task {
                        await hotelListViewModel.fetchHotels()
                    }
                }
            }
            .navigationTitle("Отель")
            .navigationBarTitleDisplayMode(.inline)
            
            ButtonView(title: "Выбрать номер", action: {coordinator.navigateTo(screen: .rooms)})
                .padding()
        }


                }
            }


struct HotelListView_Previews: PreviewProvider {


    static var previews: some View {
        HotelListView()
    }
}



