//
//  CreateJournalEntryView.swift
//  Day Journal
//
//  Created by Theppitak M. on 07.05.2024.
//

import SwiftUI

struct CreateJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var text: String = "Today was..."
    @State var rating: Double = 3.0
    @State var date: Date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                DatePicker("Date of Entry", selection: $date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(rating)))
                Slider(value: $rating, in: 1...5, step: 1)
                TextEditor(text: $text)
                    .frame(height: 200)
                
            }
            .navigationTitle("Add New Entry")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundStyle(Color.red)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        let newJournal = JournalEntry(title: title, text: text, rating: rating, date: date)
                        modelContext.insert(newJournal)
                        dismiss()
                    }
                }
                
            }
        }
    }
}

#Preview {
    CreateJournalEntryView()
}
