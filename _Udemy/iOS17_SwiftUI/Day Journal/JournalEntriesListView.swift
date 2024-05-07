//
//  ContentView.swift
//  Day Journal
//
//  Created by Theppitak M. on 04.05.2024.
//

import SwiftUI

struct JournalEntriesListView: View {
    
    var body: some View {
        
        let count = journalEntries.count
        
        NavigationStack {
            List(journalEntries) { entry in
                NavigationLink(destination: JournalEntryDetailView(detailedJournalEntry: entry)) {
                    JournalEntryRowView(detailedJournalEntry: entry)
                }
            }
            .navigationTitle("\(count) journal entr\(count > 1 ? "ies" : "y")")
        }
    }
}

#Preview {
    JournalEntriesListView()
}
