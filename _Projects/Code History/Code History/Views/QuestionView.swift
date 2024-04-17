//
//  QuestionView.swift
//  == Question and answer button component (refactored from GameView) ==
//  Code History
//
//  Created by Theppitak M. on 17.04.2024.
//

import SwiftUI

struct QuestionView: View {
    
    // recieve props from GameView parent
    @EnvironmentObject var viewModel: GameViewModel
    
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding()
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) {
                    answerIndex in
                    Button(action: {
                        print("Tapped in option with the text \(question.possibleAnswers[answerIndex])")
                        // call the makeGuess(atIndex:) with the answerIndex provided by the ForEach loop
                        viewModel.makeGuess(atIndex: answerIndex)
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                    // disable or enable the button if a guess has been made.
                    .disabled(viewModel.guessWasMade)
                }
            }
        }
        // show Next nav button if user tapped answer btn
        if viewModel.guessWasMade {
            Button(action: { viewModel.displayNextScreen()}) { BottomTextView(str: "Next")}
        }
    }
}

#Preview {
    QuestionView(question: Game().currentQuestion)
}
