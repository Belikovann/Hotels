//
//  HotelDetails.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//

import SwiftUI

struct HotelDetails: Codable {
    
    let id: Int
    let name: String
    let adress: String
    let minimalPrice: Int
    let priceForIt: String
    let rating: Int
    let ratingName: String
    let imageUrls: [String]
    let aboutTheHotel: AboutTheHotel
    
    
    struct AboutTheHotel: Codable {
        let description: String
        let peculiarities: [String]
    }
}



//extension HotelDetails {
//    enum CodingKeys: String, CodingKey {
//        case id = "ID"
//        case name = "Name"
//        case adress = "Adress"
//        case minimalPrice = "Minimal_price"
//        case priceForIt = "Price_of_it"
//        case rating = "Rating"
//        case ratingName = "Rating_name"
//        case imageUrls = "Image_urls"
//        case aboutTheHotel = "About_the_hotel"
//    }
//}
