//
//  NetworkManager.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//

import SwiftUI
import Combine

enum NetworkError: Error {
    case invalidURL, noData, decodingError
}


class NetworkManager: ObservableObject {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchHotel() async throws -> Hotel {
        let (data, _) = try await URLSession.shared.data(from: Link.hotelUrl.url)
        let decoder = JSONDecoder()
        //        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            
            let hotel = try decoder.decode(Hotel.self, from: data)
            print("Hotels loaded successfully:", hotel)
            return hotel
        } catch {
            print("Error during decoding: here", error)
            throw error
        }
    }
    
    func fetchRooms() async throws -> [Room] {
        let (data, _) = try await URLSession.shared.data(from: Link.roomUrl.url)
        let decoder = JSONDecoder()
        //        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let rooms = try decoder.decode(Rooms.self, from: data)
            print("Rooms loaded successfully:", rooms.rooms)
            return rooms.rooms
        } catch {
            print("Error during decoding:", error)
            throw error
        }
    }
    
    func fetchBookingDetail() async throws -> Booking {
        let (data, _) = try await URLSession.shared.data(from: Link.bookingUrl.url)
        let decoder = JSONDecoder()
        do {
            let bookingDetail = try decoder.decode(Booking.self, from: data)
            print("Details loaded successfully:", bookingDetail)
            return bookingDetail
        } catch {
            print("Error during decoding: here", error)
            throw error
        }
    }
}




extension NetworkManager {
  
        enum Link {
            case hotelUrl
            case roomUrl
            case bookingUrl
    
            var url: URL {
                switch self {
                case .hotelUrl:
                    return URL(string: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3")!
                case .roomUrl:
                    return URL(string: "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd")!
                case .bookingUrl:
                    return URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8")!
                }
            }
        }
}
