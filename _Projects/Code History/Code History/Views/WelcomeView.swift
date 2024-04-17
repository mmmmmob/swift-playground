//
//  WelcomeView.swift
//  == First screen after app launched ==
//  Code History
//
//  Created by Theppitak M. on 17.04.2024.
//

import SwiftUI

struct WelcomeView: View {
    //    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    //    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        // NavigationView is a wrapper using in multi-page application
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answer to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding()
                    }
                    Spacer()
                    // instead of button, NavigationLink acts as a sender to another view (identify with 'destination:' argument)
                    // reuse BottomTextView component with 'label:' argument
                    NavigationLink(destination: GameView(),label:{ BottomTextView(str: "Okay, Let's go!")})
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
