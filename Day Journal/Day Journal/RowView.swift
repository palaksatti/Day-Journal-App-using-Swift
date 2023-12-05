//
//  RowView.swift
//  Day Journal
//
//  Created by Palak Satti on 25/11/23.
//

import SwiftUI

struct RowView: View {
    let rowJournalEntry: JournalEntry // Assuming JournalEntry is a struct or class

    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(rowJournalEntry.title)
                    .bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }.padding(.bottom,1)
            HStack{
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
                
            }
            .font(.caption)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            RowView(rowJournalEntry: JournalEntry(title: "Good day", text: "a very good day it was", rating: 5, date: Date()))
        }
    }
}
