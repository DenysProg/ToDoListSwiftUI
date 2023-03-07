//
//  ItemModel.swift
//  ToDoListSwiftUI
//
//  Created by Denys Nikolaichuk on 07.03.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
