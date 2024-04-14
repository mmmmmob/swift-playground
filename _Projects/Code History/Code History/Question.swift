//
//  Question.swift
//  == Question struct (Model) to declare sets of question and answer in a structured way ==
//  Code History
//
//  Created by Theppitak M. on 13.04.2024.
//

import Foundation

struct Question {
    var questionText: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
}
