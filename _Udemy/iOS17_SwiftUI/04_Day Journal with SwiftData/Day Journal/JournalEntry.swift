//
//  JournalEntry.swift
//  Day Journal
//
//  Created by Theppitak M. on 04.05.2024.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String
    var text: String
    var rating: Double = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}
