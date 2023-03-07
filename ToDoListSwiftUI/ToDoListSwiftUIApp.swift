//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Denys Nikolaichuk on 07.03.2023.
//

import SwiftUI

@main
struct ToDoListSwiftUIApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
