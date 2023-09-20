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
    
    @Published var hotel: HotelDetails.Hotel?
    
    static let shared = NetworkManager()
    private init() {}
    
    private func createURL() -> URL? {
        return URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8")!
    }
    
    func fetchData(from url: URL) async throws -> HotelDetails {
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let result = try decoder.decode(HotelDetails.self, from: data)

        return result
    }

    }

