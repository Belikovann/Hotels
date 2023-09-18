//
//  Coordinator.swift
//  Hotels
//
//  Created by Аня Беликова on 18.09.2023.
//

import SwiftUI

class Coordinator: ObservableObject {
    
    @Published var isRoomScreenPresented = false
    
    func presentRoomScreen() {
        isRoomScreenPresented = true
    }
    
    func dismissRoomScreen() {
        isRoomScreenPresented = false
    }
    
}
