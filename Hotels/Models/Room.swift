//
//  RoomDetail.swift
//  Hotels
//
//  Created by Аня Беликова on 14.09.2023.
//

import Foundation

struct Room: Decodable {
    
    let id: Int?
    let name: String?
    let price: Int?
    let pricePer: String?
    let peculiarities: [String]?
    let imageUrls: [String]?    
}

enum RoomDetailsApi {
    case baseUrl
    
    var url: URL {
        switch self {
        case .baseUrl:
            return URL(string: "https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd")!
        }
    }
}

extension Room {
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case name = "Name"
        case price = "Price"
        case pricePer = "Price_per"
        case peculiarities = "Peculiarities"
        case imageUrls = "Image_urls"
    }
}
