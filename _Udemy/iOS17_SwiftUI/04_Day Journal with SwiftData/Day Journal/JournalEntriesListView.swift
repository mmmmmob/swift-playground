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
    @State private var searchText: String = ""
    
    var body: some View {
        
        let count = journalEntries.count
        NavigationSplitView {
            List {
                ForEach(searchResult) { entry in
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
        .searchable(text: $searchText)
    }
    
    var searchResult: [JournalEntry] {
        if searchText.isEmpty {
            return journalEntries
        } else {
            return journalEntries.filter {
                $0.title.lowercased().contains(searchText.lowercased()) || $0.text.lowercased().contains(searchText.lowercased())
            }
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
