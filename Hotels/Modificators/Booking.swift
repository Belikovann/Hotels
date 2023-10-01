//
//  BookingDetail.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import Foundation

struct Booking {
    
    let hotelName: String?
    let hotelAdress: String?
    let horating: Int?
    let ratingName: String?
    let departure: String?
    let arrivalCountry: String?
    let tourDateStart: String?
    let tourDateStop: String?
    let numberOfNights: Int?
    let room: String?
    let nutrition: String?
    let tourPrice: Int?
    let fuelCharge: Int?
    let serviceCharge: Int?
    
}

enum BookingDetailsApi {
    case baseUrl
    
    var url: URL {
        switch self {
        case .baseUrl:
            return URL(string: "https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8")!
        }
    }
}

extension Booking {
    enum CodingKeys: String, CodingKey {

        case hotelName = "Hotel_name"
        case hotelAdress = "Hotel_adress"
        case horating = "Horating"
        case ratingName = "Rating_name"
        case departures = "Departures"
        case arrivalCountry = "Arrival_country"
        case tourDateStart = "Tour_date_start"
        case tourDateStop = "Tour_date_stop"
        case numberOfNights = "Number_of_nights"
        case room = "Room"
        case nutrition = "Nutrition"
        case tourPrice = "Tour_price"
        case fuelCharge = "Fuel_charge"
        case serviceCharge = "Service_charge"

    }
}
