//
//  RoomView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI


struct RoomView: View {
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    RoomCellView()
                }
                Section {
                    RoomCellView()
                }
            }
            .listStyle(.automatic)
        }
    }
}


struct RoomView_Previews: PreviewProvider {
    
    static var previews: some View {
        RoomView()
    }
}
