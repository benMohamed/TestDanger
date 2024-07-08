//
//  ContentView.swift
//  TestDanger
//
//  Created by Mohammed on 7/4/24.
//

import SwiftUI
//TODO: Remove this comment after testing Danger.
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            let test = print("BMEX")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
