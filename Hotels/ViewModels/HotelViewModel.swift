//
//  HotelViewModel.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//
//
//import Foundation
//import Combine
//
//class HotelViewModel: ObservableObject {
//    @Published var hoteldetails: HotelDetails?
//    private var cancellable: AnyCancellable?
//
//    func fetchData() {
//        cancellable = APIManager.shared.fetchData()
//            .sink(receiveCompletion: { _ in
//            }, receiveValue: { receivedData in
//                self.hoteldetails = receivedData
//            })
//    }
//}
