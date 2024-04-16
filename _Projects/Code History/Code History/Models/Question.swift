//
//  Question.swift
//  == Question struct (Model) to declare sets of question and answer in a structured way ==
//  Code History
//
//  Created by Theppitak M. on 13.04.2024.
//

import Foundation

struct Question: Hashable {
    var questionText: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
    // absolute source of truth of all qustions for var created from this struct
    static var allQuestions = [
            Question(questionText: "Who invented the World Wide Web?",
                     possibleAnswers: ["Steve Jobs", "Linus Torvalds", "Bill Gates", "Tim Berners-Lee"],
                     correctAnswerIndex: 3),
            Question(questionText: "What was the first object orieted programming language?",
                     possibleAnswers: ["Simula", "Python", "Swift", "C"],
                     correctAnswerIndex: 0)]
}


