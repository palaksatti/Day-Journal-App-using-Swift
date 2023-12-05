//
//  EditJournalView.swift
//  Day Journal
//
//  Created by Palak Satti on 01/12/23.
//

import SwiftUI

struct EditJournalView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingJournal: JournalEntry
    @State var editmode = false
    var body: some View {
        if editmode{
            Form{
                TextField("Title", text: $editingJournal.title)
                DatePicker("Date", selection: $editingJournal.date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(editingJournal.rating)))
                Slider(value: $editingJournal.rating, in: 1...5,step: 1)
                TextEditor(text: $editingJournal.text)
            }
            .navigationTitle("Edit mode")
                .toolbar{
                        Button("Delete"){
                            modelContext.delete(editingJournal)
                            dismiss()
                        }
                
                    .foregroundStyle(.red)
                        Button("Done"){
                            editmode = false
                        }
                        .bold()
                }
        
        }else{
            JEDetaikView(detailJournalEntry: editingJournal)
                .toolbar{
                    Button("Edit"){
                        editmode = true
                        
                    }
                }
        }
    }
}

#Preview {
    NavigationStack{
        EditJournalView(editingJournal: JournalEntry(title:"Hey", text: "I am Palak", rating: 5, date: Date()))
    }
}
