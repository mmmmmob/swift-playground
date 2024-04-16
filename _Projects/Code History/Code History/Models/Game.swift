//
//  Game.swift
//  == Game model defines all game mechanic such as num of guessed and keep track of game state ==
//  Code History
//
//  Created by Theppitak M. on 15.04.2024.
//

import Foundation

struct Game {
    // properties that can be access only in struct with private(set)
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    
    // properties of all questions from Question model which shuffled
    private let questions = Question.allQuestions.shuffled()
    
    // computed properties to check the result and update score (return as tuples value)
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        // iterate through guesses dictionary -> [question struct:guessed int]
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // to show number of questions on main view
    var numberOfQuestions: Int {
        questions.count
    }
    
    // to show current question number on main view
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    // func to set playrr answer to guesses dictionary (Int)
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    // func to update game status and current question identifier
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
