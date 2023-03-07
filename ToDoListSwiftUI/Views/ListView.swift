//
//  ListView.swift
//  ToDoListSwiftUI
//
//  Created by Denys Nikolaichuk on 07.03.2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [ItemModel(title: "This is the first title!", isCompleted: false),
                                     ItemModel(title: "This is the second title!", isCompleted: false),
                                     ItemModel(title: "This is the third title!", isCompleted: true)]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
