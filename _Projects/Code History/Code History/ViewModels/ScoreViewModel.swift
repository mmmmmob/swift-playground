//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Theppitak M. on 17.04.2024.
//

import Foundation

struct ScoreViewModel {
    let correctGuessed: Int
    let incorrectGuessed: Int
    
    var percentage: Int {
        (correctGuessed * 100 / (correctGuessed + incorrectGuessed))
    }
}
