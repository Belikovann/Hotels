//
//  HotelsApp.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//

import SwiftUI

@main
struct HotelsApp: App {
    
    @StateObject var coordinator = Coordinator()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(coordinator)
        }
    }
}



