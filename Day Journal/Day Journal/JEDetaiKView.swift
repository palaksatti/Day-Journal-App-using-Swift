//
//  JEDetaikView.swift
//  Day Journal
//
//  Created by Palak Satti on 22/11/23.
//

import SwiftUI

struct JEDetaikView: View {
    let detailJournalEntry: JournalEntry
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                HStack{
                    Text(detailJournalEntry.date, style: .date)
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                    Spacer()
                    
                }
                .padding(.bottom)
                
                Text(detailJournalEntry.text)
            }
            .padding()
        }
    
        .navigationTitle(detailJournalEntry.title)
            
    }
}

#Preview {
    NavigationStack{
        JEDetaikView(detailJournalEntry: JournalEntry(title: "Manifesting", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus ut mi eget vehicula. Nulla lobortis venenatis purus vitae feugiat. Mauris aliquam quam eget malesuada posuere. Sed tincidunt sem et felis imperdiet, vel fermentum nibh mollis. Integer hendrerit magna a quam porta interdum. Donec bibendum sollicitudin nunc, quis hendrerit enim elementum at. Cras hendrerit est ligula, sit amet posuere felis imperdiet non.Etiam vel turpis metus. Vestibulum neque lacus, malesuada eu aliquam eu, vestibulum a nisi. Phasellus rutrum elit sed risus facilisis, quis scelerisque ex feugiat. Praesent eu felis ut nunc pellentesque condimentum ut a elit. Nulla facilisi. Morbi sit amet pharetra justo. Fusce nec urna eros. Aliquam vestibulum fringilla interdum. Morbi porta laoreet ligula, id fermentum eros dapibus ut. Curabitur at lectus elementum, lobortis elit at, posuere eros. Proin lacinia, magna et sodales rutrum, arcu lorem auctor odio, eu volutpat risus est vitae enim. Aenean feugiat felis sit amet turpis eleifend, vitae tincidunt sapien venenatis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris tincidunt condimentum ipsum at consectetur. Vivamus euismod gravida nunc vitae consectetur. Quisque luctus gravida tempor.sed imperdiet. Fusce semper, dui eget tempor fringilla, odio nulla tincidunt dui, ut sodales lacus mi nec nisl. Quisque libero lacus, iaculis id nulla at, aliquam consequat lectus. Nullam malesuada mi diam, ut semper nisi semper in. Praesent vitae dolor eget mauris posuere posuere. Etiam vitae sollicitudin mi. Quisque neque nisl, maximus non rhoncus quis, sagittis sed nulla. In faucibus est sed mattis facilisis. Etiam non lectus hendrerit, mattis mauris a, convallis nulla. Etiam efficitur diam risus, eget vehicula nisi scelerisque ac. Suspendisse potenti. Donec vulputate augue ullamcorper tortor hendrerit, non bibendum sapien sodales. Fusce lacinia ullamcorper quam vitae ultricies. Etiam justo elit, molestie ut vulputate ut, mollis ac est. Vestibulum nec ante ac ipsum rutrum vestibulum. Proin euismod accumsan enim nec commodo. Aliquam eget ullamcorper ipsum. Donec molestie eros in lacus ullamcorper, ac scelerisque tellus varius. Mauris feugiat nisl sed nulla convallis blandit." , rating: 5, date:Date()))
    }
}
