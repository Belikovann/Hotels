//
//  HotelListScreenView.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//
//
//import SwiftUI
//
//struct HotelListView: View {
//
//    @EnvironmentObject var coordinator: Coordinator
//    @StateObject private var hotelListViewModel = HotelListViewModel()
//
//    var body: some View {
//        VStack {
//            List{
//                    ForEach(hotelListViewModel.hotels) { hotel in
//                        HotelCellView(hotel: hotel)
//                }
//            }
//            .listStyle(.plain)
//            .overlay {
//                if hotelListViewModel.isLoading {
//                    ProgressView()
//                }
//            }
//            .onAppear {
//                Task {
//                    await hotelListViewModel.fetchHotels()
//                }
//            }
//
//            ButtonView(title: "Выбрать номер", action: {coordinator.navigateTo(screen: .rooms)})
//                .padding()
//        }
//                        .navigationTitle("Отель")
//                        .navigationBarTitleDisplayMode(.inline)
//
//                }
//            }
//
//
//struct HotelListView_Previews: PreviewProvider {
//
//
//    static var previews: some View {
//        HotelListView()
//    }
//}


import SwiftUI

struct HotelListView: View {
    @EnvironmentObject var coordinator: Coordinator
    @StateObject private var hotelListViewModel = HotelListViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if hotelListViewModel.hotels.isEmpty {
                    ProgressView()
                } else {
                    List(hotelListViewModel.hotels) { hotel in
                        HotelCellView(hotel: hotel)
                }
                    ButtonView(title: "Выбрать номер", action: {
                        coordinator.navigateTo(screen: .rooms)
                    })
                    .padding()
                }

            }
            .navigationTitle("Отель")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                Task {
                    await hotelListViewModel.fetchHotels()
                    print("Hotel Data Loaded:", hotelListViewModel.hotels)
                }
            }
        }
    }
}

struct HotelListView_Previews: PreviewProvider {
    static var previews: some View {
        HotelListView()
            .environmentObject(Coordinator())
    }
}
