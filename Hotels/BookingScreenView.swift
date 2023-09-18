//
//  BookingView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI

struct BookingScreenView: View {
    
    @EnvironmentObject private var clientManager: ClientManager
    
    var body: some View {
             NavigationStack {
                VStack(alignment: .leading) { // Block of general data of hotel
                    RatingView()
                    NameAndAddressView()
                }
            }
        
    }
}


struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingScreenView()
    }
}
