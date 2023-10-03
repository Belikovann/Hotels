//
//  BookingView.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI

struct BookingView: View {
    
    @EnvironmentObject private var clientManager: ClientManager
    @EnvironmentObject var coordinator: Coordinator
    @StateObject var bookingDetailViewModel = BookingDetailViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    if let booking = bookingDetailViewModel.bookingDetails {
                        BookingCell(booking: booking)
                            .overlay {
                                if bookingDetailViewModel.isLoading {
                                    ProgressView()
                                }
                            }
                    } else {
                        Text("Loading ...")
                            .foregroundColor(.gray)
                    }
                }
                
                
                
                .navigationTitle("Бронирование")
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
        .padding()
        .onAppear() {
            Task {
                await bookingDetailViewModel.fetchBookingDetail()
            }
        }
    }
}


struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
