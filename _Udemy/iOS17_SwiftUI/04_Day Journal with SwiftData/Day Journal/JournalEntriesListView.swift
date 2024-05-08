//
//  ContentView.swift
//  Day Journal
//
//  Created by Theppitak M. on 04.05.2024.
//

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    @State var isShowCreateView: Bool = false
    
    var body: some View {
        
        let count = journalEntries.count
        NavigationSplitView {
            List {
                ForEach(journalEntries) { entry in
                    NavigationLink {
                        EditJournalEntryView(editingJournalEntry: entry)
                    } label: {
                        JournalEntryRowView(detailedJournalEntry: entry)
                    }
                }
                .onDelete(perform: deleteEntry)
            }
            .navigationTitle("\(count) journal entr\(count > 1 ? "ies" : "y")")
            .toolbar {
                Button(action: {
                    isShowCreateView = true
                }) {
                    Label("Add Item", systemImage: "plus")
                }
            }
            .sheet(isPresented: $isShowCreateView) {
                CreateJournalEntryView()
            }
        } detail: {
            Text("Select an item")
        }
    }
    
    private func deleteEntry(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(journalEntries[index])
            }
        }
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
