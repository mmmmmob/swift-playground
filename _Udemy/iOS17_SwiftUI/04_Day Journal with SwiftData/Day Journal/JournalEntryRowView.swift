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
                Text(String(repeating: "⭐️", count: Int(detailedJournalEntry.rating)))
            }
            .font(.callout)
            .foregroundStyle(.secondary)
            Text(detailedJournalEntry.text)
                .lineLimit(1)
        }
    }
}

#Preview {
    JournalEntryRowView(detailedJournalEntry: JournalEntry(title: "Test", text: "Amet ex est dolore deserunt excepteur et esse ea pariatur pariatur laborum do Lorem minim ea. Enim sint non tempor magna ipsum dolor fugiat aliqua exercitation. Veniam ea deserunt dolore consectetur proident. Ut est sit dolor consequat. Qui mollit enim occaecat aliqua cillum aliquip quis mollit velit ut mollit pariatur duis sit esse. Quis commodo ut qui. Cillum cupidatat duis proident velit veniam dolore. In velit fugiat incididunt fugiat deserunt. Aliqua proident pariatur voluptate velit amet incididunt ad eu incididunt sunt ex pariatur cupidatat. Consectetur consectetur labore ea id officia id magna in aute nostrud cupidatat duis fugiat. Ullamco eu quis adipisicing. Elit ipsum veniam minim proident nulla do laboris est. Commodo labore commodo amet irure sunt cupidatat sunt culpa cupidatat do consequat nostrud. Velit nostrud qui aliquip ea.ex pariatur cupidatat. Consectetur consectetur labore ea id officia id magna in aute nostrud cupidatat duis fugiat. Ullamco eu quis adipisicing. Elit ipsum veniam minim proident nulla do laboris est. Commodo labore commodo amet irure sunt cupidatat sunt culpa cupidatat do consequat nostrud. Velit nostrud qui aliquip ea.ex pariatur cupidatat. Consectetur consectetur labore ea id officia id magna in aute nostrud cupidatat duis fugiat. Ullamco eu quis adipisicing. Elit ipsum veniam minim proident nulla do laboris est. Commodo labore commodo amet irure sunt cupidatat sunt culpa cupidatat do consequat nostrud. Velit nostrud qui aliquip ea.ex pariatur cupidatat. Consectetur consectetur labore ea id officia id magna in aute nostrud cupidatat duis fugiat. Ullamco eu quis adipisicing. Elit ipsum veniam minim proident nulla do laboris est. Commodo labore commodo amet irure sunt cupidatat sunt culpa cupidatat do consequat nostrud. Velit nostrud qui aliquip ea.", rating: 5, date: Date()))
}
