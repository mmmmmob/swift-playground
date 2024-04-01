//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Theppitak M. on 01.04.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    //   let question: [[String]] = [
    //        ["4+2 = 6?","True"],
    //        ["5! = 60?","False"],
    //        ["142-52 = 90?","True"]
    //    ]
    let quiz: [Question] = [
        Question(Q: "4+2 = 6?", A: "True"),
        Question(Q: "5! = 60?", A: "False"),
        Question(Q: "142-52 = 95?", A: "False"),
        Question(Q: "You're the best!", A: "True")
    ]
    
    var questionNumber = 0
    var userScore = 0
    
    mutating func checkAnswer(from userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            userScore += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            userScore = 0
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return userScore
    }
}
