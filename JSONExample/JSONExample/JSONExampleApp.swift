//
//  JSONExampleApp.swift
//  JSONExample
//
//  Created by Aleena Varghese on 15/04/24.
//

import SwiftUI

@main
struct JSONExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: JSONExampleViewModel())
        }
    }
}
