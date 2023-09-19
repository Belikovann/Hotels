//
//  Coordinator.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI

class Coordinator: ObservableObject {
    
    @Published var currentScreen: Screens = Screens.hotels
    
    enum Screens {
        case hotels, rooms, booking, order
    }
    
    func navigateTo(screen: Screens) {
        currentScreen = screen
        }
    
    func navigateBack() {
        switch currentScreen {
        case .hotels: break
        case .rooms: currentScreen = .hotels
        case .booking: currentScreen = .rooms
        case .order: currentScreen = .booking
        }
    }
}
