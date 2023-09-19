//
//  NetworkManager.swift
//  Hotels
//
//  Created by Аня Беликова on 19.09.2023.
//

//import Foundation
//import Combine
//
//class APIManager {
//        static let shared = APIManager()
//        
//        private init() {}
//        
//        private let baseURL = URL(string: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3")!
//        
//        func fetchData(completion: @escaping (Result<HotelDetails, Error>) -> Void) {
//            let request = URLRequest(url: baseURL)
//            
//            URLSession.shared.dataTask(with: request) { data, _, error in
//                if let error = error {
//                    completion(.failure(error))
//                    return
//                }
//                
//                do {
//                    let hotel = try JSONDecoder().decode(HotelDetails.self, from: data!)
//                    completion(.success(hotel))
//                } catch {
//                    completion(.failure(error))
//                }
//            }.resume()
//        }
//
//}
