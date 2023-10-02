//
//  BookingDetailViewModel.swift
//  Hotels
//
//  Created by Аня Беликова on 02.10.2023.
//

import SwiftUI

@MainActor
final class BookingDetailViewModel: ObservableObject {
    @Published var bookingDetails: Booking? = nil
    @Published var isLoading = false
    
    private var networkManager = NetworkManager.shared
   
    func fetchBookingDetail() async {
        isLoading = true
        do {
            bookingDetails = try await networkManager.fetchBookingDetail()
            isLoading = false
        } catch {
            print("Error during decoding:", error)
        }
        isLoading = false
    }
}

