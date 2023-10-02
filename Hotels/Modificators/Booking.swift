//
//  BookingDetail.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import Foundation

struct Booking: Decodable, Identifiable {
    
    let id: Int
    let hotelName: String
    let hotelAddress: String
    let horating: Int
    let ratingName: String
    let departure: String
    let arrivalCountry: String
    let tourDateStart: String
    let tourDateStop: String
    let numberOfNights: Int
    let room: String
    let nutrition: String
    let tourPrice: Int
    let fuelCharge: Int
    let serviceCharge: Int

    
    static let example = Booking(
    id: 1,
    hotelName: "Лучший пятизвездочный отель в Хургаде, Египет",
    hotelAddress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
    horating: 5,
    ratingName: "Превосходно",
    departure: "Москва",
    arrivalCountry: "Египет, Хургада",
    tourDateStart: "19.09.2023",
    tourDateStop: "27.09.2023",
    numberOfNights: 7,
    room: "Люкс номер с видом на море",
    nutrition: "Все включено",
    tourPrice: 289400,
    fuelCharge: 9300,
    serviceCharge: 2150
    )
}


extension Booking {
    enum CodingKeys: String, CodingKey {

        case id = "id"
        case hotelName = "hotel_name"
        case hotelAddress = "hotel_adress"
        case horating = "horating"
        case ratingName = "rating_name"
        case departure = "departure"
        case arrivalCountry = "arrival_country"
        case tourDateStart = "tour_date_start"
        case tourDateStop = "tour_date_stop"
        case numberOfNights = "number_of_nights"
        case room = "room"
        case nutrition = "nutrition"
        case tourPrice = "tour_price"
        case fuelCharge = "fuel_charge"
        case serviceCharge = "service_charge"

    }
}
