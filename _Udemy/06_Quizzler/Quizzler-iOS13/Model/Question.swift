//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Theppitak M. on 01.04.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var choice: [String]
    var correctAns: String
    
    init(q question: String,a choice: [String],correctAnswer correctAns: String) {
        self.question = question
        self.choice = choice
        self.correctAns = correctAns
    }
}
