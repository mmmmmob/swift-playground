//
//  JournalEntryRowView.swift
//  Day Journal
//
//  Created by Theppitak M. on 07.05.2024.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let detailedJournalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(detailedJournalEntry.title)
                .font(.title2)
                .bold()
            HStack {
                Text(detailedJournalEntry.date, style: .date)
                Text("·")
                Text(String(repeating: "⭐️", count: detailedJournalEntry.rating))
            }
            .font(.callout)
            .foregroundStyle(.secondary)
            Text(detailedJournalEntry.text)
                .lineLimit(1)
        }
    }
}

#Preview {
    JournalEntryRowView(detailedJournalEntry: journalEntries[0])
}
