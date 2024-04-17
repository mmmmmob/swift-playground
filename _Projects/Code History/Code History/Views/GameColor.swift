//
//  GameColor.swift
//  == Main color struct for using in another component with static properties ==
//  Code History
//
//  Created by Theppitak M. on 17.04.2024.
//

import SwiftUI

struct GameColor {
    // static properties can be access globally with StructName.PropertyName
    static let accent = Color(red: 48/255, green: 105/255, blue: 240/255)
    static let main = Color(red: 20/255, green: 28/255, blue: 58/255)
    static let correctGuess = Color.green
    static let incorrectGuess = Color.red
}
