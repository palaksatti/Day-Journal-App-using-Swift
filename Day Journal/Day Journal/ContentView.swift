//
//  ContentView.swift
//  Day Journal
//
//  Created by Palak Satti on 22/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false
    
    var body: some View {
        NavigationStack{
            List(journalEntries){ listedJournalEnteries in
                NavigationLink(destination: EditJournalView(editingJournal: listedJournalEnteries)){
                    RowView(rowJournalEntry: listedJournalEnteries)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
            .toolbar {
                Button(action: {
                    showCreateView = true
                    
                }) {
                    Label("Add Item", systemImage: "plus")
                }
            }
            .sheet(isPresented: $showCreateView){
                CreateJournalEntryView()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
