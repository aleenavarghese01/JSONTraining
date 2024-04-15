//
//  JSONExampleViewModel.swift
//  JSONExample
//
//  Created by Aleena Varghese on 15/04/24.
//

import Foundation

class JSONExampleViewModel: ObservableObject {
   @Published var users = [UserModel]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "user", withExtension: "json") else {
            fatalError("Failed to load user data")
        }
        do {
            let data = try Data(contentsOf: url)
            users = try JSONDecoder().decode([UserModel].self, from: data)
        } catch {
            fatalError("failed to decode users.json: \(error)")
        }
    }
}
