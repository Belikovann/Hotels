//
//  RoomViewModel.swift
//  Hotels
//
//  Created by Аня Беликова on 01.10.2023.
//
//
//import Foundation
//
//@MainActor
//final class RoomViewModel: ObservableObject {
//    @Published var rooms: [Room] = []
//@Published var isLoading = false
//    
//    private let networkManager = NetworkManager.shared
//    
//    func fetchRooms() async {
//        isLoading = true
//        do {
//            rooms = try await networkManager.fetchRoom()
//            isLoading = false
//        } catch {
//            print(error.localizedDescription)
//        }
//        isLoading = false 
//    }
//}
//
//
//
