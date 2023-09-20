//
//  HotelDetails.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//


import Foundation

struct HotelDetails: Decodable {
    
    let results: [Hotel]
    
    
    struct Hotel: Decodable {
        var name: String
        var adress: String
        var minimalPrice: Int
        var priceForIt: String
        var rating: Int
        var ratingName: String
        var imageUrls: [String]
        var aboutTheHotel: AboutTheHotel
    }
    
    struct AboutTheHotel: Decodable {
        let description: String
        let peculiarities: [String]
    }
    
    
    
    enum allAPI {
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

