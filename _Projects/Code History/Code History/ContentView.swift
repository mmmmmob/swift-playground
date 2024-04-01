//
//  ContentView.swift
//  Code History
//
//  Created by Theppitak M. on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.teal)
            Text("Hello, world!").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).font(.title).bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
