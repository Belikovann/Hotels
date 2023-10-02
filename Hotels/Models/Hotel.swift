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
        let address: String
        let minimalPrice: Int
        let priceForIt: String
        let rating: Int
        let ratingName: String
        let imageUrls: [String]
        let aboutTheHotel: AboutTheHotel


    static let example = Hotel(
        id: 1,
        name: "Лучший пятизвездочный отель в Хургаде, Египет",
        address: "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
        minimalPrice: 134900,
        priceForIt: "За тур с перелётом",
        rating: 4,
        ratingName: "оk",
        imageUrls: [
            "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
            "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
            "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
        ],
        aboutTheHotel: AboutTheHotel(
            description: "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
            peculiarities: [
                "Бесплатный Wifi на всей территории отеля",
                "1 км до пляжа",
                "Бесплатный фитнес-клуб",
                "20 км до аэропорта"
            ]
        )
    )

}

struct AboutTheHotel: Decodable {
    let description: String
    let peculiarities: [String]
}

extension Hotel {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case address = "adress"
        case minimalPrice = "minimal_price"
        case priceForIt = "price_for_it"
        case rating = "rating"
        case ratingName = "rating_name"
        case imageUrls = "image_urls"
        case aboutTheHotel = "about_the_hotel"
    }
}

