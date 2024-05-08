//
//  JournalEntry.swift
//  Day Journal
//
//  Created by Theppitak M. on 04.05.2024.
//

import Foundation

class JournalEntry: Identifiable { // Identifiable protocol can get rid of id: in List on SwiftUI
    var title: String
    var text: String
    var rating: Int = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Int, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

var journalEntries: [JournalEntry] = [
    JournalEntry(title: "Nice cooking day", text: "In elit voluptate nulla elit dolore et exercitation. Est consectetur do tempor sunt veniam nostrud adipisicing. In consectetur pariatur ipsum duis ut et pariatur. Fugiat incididunt et sint deserunt fugiat exercitation cupidatat in nulla. Fugiat laboris veniam duis ullamco commodo ad. Dolor esse minim fugiat tempor ex excepteur enim laborum ad magna officia. Veniam do consectetur do non minim enim. Enim anim ut aute duis ex. Qui officia ea eiusmod laboris et cupidatat et nostrud anim commodo aliqua laboris consequat. Et ea nostrud Lorem duis consectetur sint sit sunt proident elit adipisicing ex mollit sunt et. Aute enim esse proident deserunt excepteur. Commodo excepteur mollit consequat. Ullamco excepteur reprehenderit reprehenderit eu proident elit commodo ut aliquip nisi anim. Labore tempor Lorem consequat nisi ea. Mollit proident elit proident dolore tempor elit eiusmod anim enim enim elit incididunt.elit adipisicing ex mollit sunt et. Aute enim esse proident deserunt excepteur. Commodo excepteur mollit consequat. Ullamco excepteur reprehenderit reprehenderit eu proident elit commodo ut aliquip nisi anim. Labore tempor Lorem consequat nisi ea. Mollit proident elit proident dolore tempor elit eiusmod anim enim enim elit incididunt.elit adipisicing ex mollit sunt et. Aute enim esse proident deserunt excepteur. Commodo excepteur mollit consequat. Ullamco excepteur reprehenderit reprehenderit eu proident elit commodo ut aliquip nisi anim. Labore tempor Lorem consequat nisi ea. Mollit proident elit proident dolore tempor elit eiusmod anim enim enim elit incididunt.", rating: 5, date: Date()),
    JournalEntry(title: "Date night", text: "ng. In consectetur pariatur ipsum duis ut et pt elit commodo ut aliquip nisi anim. Labore tempor Lorem consequat nisi ea. Mollit proident elit proident dolore tempor elit eiusmod anim enim enim elit incididunt.", rating: 3, date: Date.now.addingTimeInterval(-24 * 60 * 60)),
    JournalEntry(title: "Special treats", text: "minim enim. Enim anim ut aute duis ex. Qui officia ea eiusmod laboris et cupidatat et nostrud anim commodo aliqua laboris consequat. Et ea nostrud Lorem duis consectetur sint sit sunt proident elit adipisicing ex mollit sunt et. Aute enim esse proident deserunt excepteur. Commodo excepteur mollit consequat. Ullamco excepteur reprehenderit reprehenderit eu proident elit commodo ut aliquip nisi anim. Labore tempor Lorem consequat nisi ea. Mollit proident elit proident dolore tempor elit eiusmod anim enim enim elit incididunt.elit adipisicing ex mollit sunt et. Aute enim esse proident deserunt excepteur. Commodo excepteur mollit consequat. Ullamco excepteur reprehenderit reprehenderit eu proident elit commodo ut aliquip nisi anim. Labore tempor Lorem consequat nisi ea. Mollit proident elit proident dolore tempor elit eiusmod anim enim enim elit incididunt.", rating: 4, date: Date.now.addingTimeInterval(-7*(24 * 60 * 60))),
]
