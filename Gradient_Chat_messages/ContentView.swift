//
//  ContentView.swift
//  Gradient_Chat_messages
//
//  Created by vignesh kumar c on 11/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomeView()
                .navigationTitle("Messages")
        }
    }
}

#Preview {
    ContentView()
}
