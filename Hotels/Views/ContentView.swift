//
//  ContentView.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var clientManager: ClientManager
    @StateObject var networkManager = NetworkManager.shared
    
        var body: some View {
            NavigationView{
                switch coordinator.currentScreen {
                case .hotels:
                    HotelListScreenView()
                case .rooms:
                    RoomScreenView()
                case .booking:
                    BookingScreenView()
                case .order:
                    OrderScreenView()
                }
            }
        }
    }

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Coordinator())
            .environmentObject(ClientManager())
    }
}
