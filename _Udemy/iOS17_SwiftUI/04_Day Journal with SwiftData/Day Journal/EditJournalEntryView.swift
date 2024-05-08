//
//  EditJournalEntryView.swift
//  Day Journal
//
//  Created by Theppitak M. on 08.05.2024.
//

import SwiftUI

struct EditJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingJournalEntry: JournalEntry
    @State var isInEditMode: Bool = false
    
    var body: some View {
        if isInEditMode {
            Form {
                TextField("Title", text: $editingJournalEntry.title)
                DatePicker("Date of Entry", selection: $editingJournalEntry.date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                TextEditor(text: $editingJournalEntry.text)
                    .frame(height: 200)
                
            }
            .navigationTitle("Edit Entry")
            .toolbar {
                Button("Delete") {
                    modelContext.delete(editingJournalEntry)
                    dismiss()
                }
                .tint(.red)
                Button("Done") {
                    isInEditMode = false
                }
            }
        }
        else { JournalEntryDetailView(detailedJournalEntry: editingJournalEntry)
                .toolbar {
                    
                    Button("Edit", systemImage: "pencil") {
                        isInEditMode = true
                    }
                    
                }
        }
    }
}

#Preview {
    NavigationStack {
        EditJournalEntryView(editingJournalEntry: JournalEntry(title: "Test", text: "Amet ex est dolore deserunt excepteur et esse ea pariatur pariatur laborum do Lorem minim ea. Enim sint non tempor magna ipsum dolor fugiat aliqua exercitation. Veniam ea deserunt dolore consectetur proident. Ut est sit dolor consequat. Qui mollit enim occaecat aliqua cillum aliquip quis mollit velit ut mollit pariatur duis sit esse. Quis commodo odo amet irure sunt cupidatat sunt culpa cupidatat do consequat nostrud. Velit nostrud qui aliquip ea.", rating: 5, date: Date()))
    }
}
