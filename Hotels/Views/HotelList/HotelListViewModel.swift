//
//  HotelViewModel.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//
//
import Foundation

@MainActor
final class HotelListViewModel: ObservableObject {
    @Published var hotels: [Hotel] = []
    @Published var isLoading = false
    
    private let networkManager = NetworkManager.shared
    
    func fetchHotels() async {
      isLoading = true
        do {
            hotels = try await networkManager.fetchHotels()
            isLoading = false
        } catch {
            print(error.localizedDescription)
        }
        isLoading = false
    }
//    func fetchHotel() async {
//      isLoading = true
//        do {
//            hotels = try await networkManager.fetchHotel()
//            isLoading = false
//        } catch {
//            print(error.localizedDescription)
//        }
//        isLoading = false
//    }
    
}
