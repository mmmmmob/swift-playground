//
//  GameViewModel.swift
//  == View Model which stored all interaction between Models and Views ==
//  Code History
// 
//  Created by Theppitak M. on 17.04.2024.
//

import SwiftUI

// create a new object type named GameViewModel that conforms to the ObservableObject protocol
class GameViewModel: ObservableObject {
    // wrapped property in the @Published modifier so our GameViewModel can notify any observers when changes are made to it
    @Published private var game = Game()
    
    // computed var returns the game’s current question
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    // indicate the user’s progress.
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    // check if guess was made to show navigation button to next question in GameView
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    // use this to navigate to game result screen at the end
    var gameIsOver: Bool {
        game.isOver
    }
    
    // send user guessIndex to Game model
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    // if user tap navigation button then comm. bact to Game model to update game status
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        }
        return GameColor.main
    }
    
    // return number of answer with right and wrong from Game model to views
    var correctGuessed: Int {
        game.guessCount.correct
    }
    
    var inCorrectGuesses: Int {
        game.guessCount.incorrect
    }
}
