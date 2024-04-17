//
//  ContentView.swift
//  == Main View for User Interaction ==
//  Code History
//
//  Created by Theppitak M. on 30.03.2024.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant","Beetle","Moth","Fly"], correctAnswerIndex: 2)
    
    // tell SwiftUI with @State wrapper that this property of View protocol (typically immutable props) can be mutate, please redrawn when it changed value.
    @State var mainColor = GameColor.main
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                
                // numOfQuestion
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                // questionBody
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                // Push to the edge ^ --- v
                Spacer()
                
                // answerButtons
                HStack {
                    // iterate over answer array and render ChoiceTextView component
                    ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                        Button(action: {
                            print("Tapped an option with the text: \(question.possibleAnswers[answerIndex])")
                            
                            // change color with ternary operator
                            mainColor = answerIndex == question.correctAnswerIndex ? GameColor.correctGuess : GameColor.incorrectGuess
                        },
                               label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                        )
                    }
                }
                .safeAreaPadding()
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    GameView()
}
