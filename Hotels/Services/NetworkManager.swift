//
//  NetworkManager.swift
//  Hotels
//
//  Created by Аня Беликова on 20.09.2023.
//

import Foundation
import Combine 

enum NetworkError: Error {
    case invalidURL, noData, decodingError
}


class NetworkManager: ObservableObject {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    
    func fetchHotels() async throws -> [Hotel] {
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8")!)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let hotels = try decoder.decode(HotelQuery.self, from: data)
            print("Hotels loaded successfully:", hotels.data)
            return hotels.data
        } catch {
            throw NetworkError.decodingError
        }
    }
    
    
//    func fetchRoom() async throws -> [Room] {
//        let (data, _) = try await URLSession.shared.data(from: Link.roomUrl.url)
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
//        do {
//            let roomQuery = try decoder.decode(RoomQuery.self, from: data)
//            return roomQuery.data
//        } catch {
//            throw NetworkError.invalidURL
//        }
//        
//    }

    }




extension NetworkManager {
  
        enum Link {
            case hotelUrl
            case roomUrl
            case bookingUrl
    
    
            var url: URL {
                switch self {
                case .hotelUrl:
                    return URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8")!
                case .roomUrl:
                    return URL(string: "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd")!
                case .bookingUrl:
                    return URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8")!
    
                }
            }
        }
        
    
}
