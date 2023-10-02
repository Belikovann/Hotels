//
//  RoomView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI


struct RoomView: View {
    
    @EnvironmentObject var coordinator: Coordinator
    @StateObject private var roomViewModel = RoomViewModel()
    
    var body: some View {
        NavigationStack {
            List(roomViewModel.rooms) { room in
                        RoomCellView(room: room)
                }
                .listStyle(.plain)
                .onAppear {
                    if roomViewModel.rooms.isEmpty {
                    Task {
                        await roomViewModel.fetchRooms()
                    }
                }
                }
            
                .navigationTitle("Название отеля")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        Button(action: {
                            coordinator.navigateBack()
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                        }
            )
            }
        
    }
}


struct RoomView_Previews: PreviewProvider {
    
    static var previews: some View {
        RoomView()
    }
}
