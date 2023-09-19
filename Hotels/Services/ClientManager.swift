//
//  ClientManager.swift
//  Hotels
//
//  Created by Аня Беликова on 17.09.2023.
//

import SwiftUI

final class ClientManager: ObservableObject {

    @Published var client = Client()

    var phoneIsValid: Bool {
        client.phone.count == 10
    }

    init() {}

    init(client: Client) {
        self.client = client
    }
}
