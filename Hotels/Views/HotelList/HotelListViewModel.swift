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
    @Published var hotel: Hotel? = nil
    @Published var isLoading = false
    
    private let networkManager = NetworkManager.shared
        
    func fetchHotel() async {
      isLoading = true
        do {
            hotel = try await networkManager.fetchHotel()
            isLoading = false
        } catch {
            print("Error during decoding:", error)
        }
        isLoading = false
    }
    
}
