//
//  ContentView.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var coordinator: Coordinator

        var body: some View {
            if coordinator.isRoomScreenPresented {
                RoomScreenView()
            } else {
                HotelListScreenView()
            }
        }
    }

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Coordinator())
    }
}
