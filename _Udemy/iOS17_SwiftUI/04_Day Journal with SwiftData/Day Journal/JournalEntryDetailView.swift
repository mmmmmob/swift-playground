//
//  JournalEntryDetailView.swift
//  Day Journal
//
//  Created by Theppitak M. on 04.05.2024.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailedJournalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(detailedJournalEntry.date, style: .date)
                        .bold()
                    Text("·")
                    Text(String(repeating: "⭐️", count: Int(detailedJournalEntry.rating)))
                    Spacer()
                }
                .padding(.bottom)
                Text(detailedJournalEntry.text)
            }
            .padding()
        }
        .navigationTitle(detailedJournalEntry.title)
    }
}

#Preview {
    NavigationStack{
        JournalEntryDetailView(detailedJournalEntry: JournalEntry(title: "Test", text: "Amet ex est dolore deserunt excepteuro", rating: 5, date: Date()))
    }
}
