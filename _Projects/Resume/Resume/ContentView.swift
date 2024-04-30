//
//  ContentView.swift
//  Resume
//
//  Created by Theppitak M. on 27.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.largeTitle)
                .strikethrough(color: .blue)
                .foregroundStyle(Color.red)
        }
    }
}

#Preview {
    ContentView()
}
