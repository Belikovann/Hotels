//
//  ContentView.swift
//  Hotels
//
//  Created by Аня Беликова on 12.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
                HotelGeneralDetailsView()
                RatingView()
            }
            .padding()
            .navigationBarTitle("Отель", displayMode: .inline) 
        }
        
    }

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
