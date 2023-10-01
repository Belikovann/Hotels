//
//  HotelDetails.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//


import Foundation

struct Hotel: Decodable, Identifiable {
    
        let id: Int
        let name: String
        let adress: String
        let minimalPrice: Int
        let priceForIt: String
        let rating: Int
        let ratingName: String
        let imageUrls: [String]
        let aboutTheHotel: AboutTheHotel?
        
    
//    private init() {}
    
    struct AboutTheHotel: Decodable {
        let description: String
        let peculiarities: [String]
    }
    
    static let example = Hotel(
        id: 1,
        name: "Любое имя отеля",
        adress: "Египет, улица Пушкина",
        minimalPrice: 1000,
        priceForIt: "за люкс-сервис",
        rating: 5,
        ratingName: "Отлично",
        imageUrls: [""],
        aboutTheHotel: nil
    )
}

struct HotelQuery: Decodable {
    let data: [Hotel]
}
