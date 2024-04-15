//
//  ChoiceTextView.swift
//  == Button component to reuse with ForEach in ContentView ==
//  Code History
//
//  Created by Theppitak M. on 13.04.2024.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
        // struct new choice button component
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice Text!")
}
