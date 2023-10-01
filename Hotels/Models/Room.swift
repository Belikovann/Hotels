//
//  RoomDetail.swift
//  Hotels
//
//  Created by Аня Беликова on 14.09.2023.
//

//import Foundation
//
//struct Room: Decodable, Identifiable {
//    
//    
//    let id: Int
//    let name: String
//    let price: Int
//    let pricePer: String
//    let peculiarities: [String]
//    let imageUrls: [URL]?
//    
//    static let example = Room(
//        id: 1,
//        name: "Название отеля",
//        price: 100,
//        pricePer: "за что",
//        peculiarities: ["удобства", "персональные"],
//        imageUrls: [""]
//    )
//    
//    //    init(id: Int, name: String, price: Int, pricePer: String, peculiarities: [String], imageUrls: [String]) {
//    //        self.id = id
//    //        self.name = name
//    //        self.price = price
//    //        self.pricePer = pricePer
//    //        self.peculiarities = peculiarities
//    //        self.imageUrls = imageUrls
//    //    }
//    init(id: Int, name: String, price: Int, pricePer: String, peculiarities: [String], imageUrls: [String]) {
//        self.id = id
//        self.name = name
//        self.price = price
//        self.pricePer = pricePer
//        self.peculiarities = peculiarities
//        self.imageUrls = imageUrls
//    }
//}
//
//
////extension Room {
////    enum CodingKeys: String, CodingKey {
////        case id = "ID"
////        case name = "Name"
////        case price = "Price"
////        case pricePer = "Price_per"
////        case peculiarities = "Peculiarities"
////        case imageUrls = "Image_urls"
////    }
////}
//
//struct RoomQuery: Decodable {
//    let data: [Room]
//}
