//
//  RoomDetail.swift
//  Hotels
//
//  Created by Аня Беликова on 14.09.2023.
//

import Foundation

struct Rooms: Decodable {
    let rooms: [Room]
}

struct Room: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageUrls: [String]
    
    static let example = Room(
        id: 1,
        name: "Cтандартный номер с видом на бассейн",
        price: 100,
        pricePer: "За 7 ночей с перелетом",
        peculiarities: [
            "Включен только завтрак",
            "Кондиционер"
        ],
        imageUrls: [
            "https://www.atorus.ru/sites/default/files/upload/image/News/56871/%D1%80%D0%B8%D0%BA%D1%81%D0%BE%D1%81%20%D1%81%D0%B8%D0%B3%D0%B5%D0%B9%D1%82.jpg",
            "https://q.bstatic.com/xdata/images/hotel/max1024x768/267647265.jpg?k=c8233ff42c39f9bac99e703900a866dfbad8bcdd6740ba4e594659564e67f191&o=",
            "https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg"
        ]
    )
    
}


extension Room {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case price = "price"
        case pricePer = "price_per"
        case peculiarities = "peculiarities"
        case imageUrls = "image_urls"
    }
}

