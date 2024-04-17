//
//  BottomTextView.swift
//  == Reusable NavigationLink button component ==
//  Code History
//
//  Created by Theppitak M. on 17.04.2024.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

#Preview {
    BottomTextView(str: "Test")
}
