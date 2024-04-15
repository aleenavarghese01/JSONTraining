//
//  ContentView.swift
//  JSONExample
//
//  Created by Aleena Varghese on 15/04/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: JSONExampleViewModel
    
    var body: some View {
        VStack {
            Text("User Details")
                .font(.title)
                .underline()
            List(viewModel.users, id: \.name) { user in
                VStack(alignment: .leading, spacing: 24) {
                    Text("Username : \(user.name)")
                    Text("Age : \(user.age)")
                }
            }
        }
        .padding(.top, 32)
        .background(Color.black.opacity(0.06))
    }
    
}

#Preview {
    ContentView(viewModel: JSONExampleViewModel())
}
