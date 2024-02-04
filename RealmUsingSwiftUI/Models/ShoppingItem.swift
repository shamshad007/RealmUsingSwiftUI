//
//  ShoppingItem.swift
//  RealmUsingSwiftUI
//
//  Created by Code with Shamshad on 04/02/24.
//

import Foundation

struct ShoppingItem: Identifiable {
    let id: Int
    let title: String
    let notes: String
    let bought: Bool
    let quantity: Int
}

// MARK: - init
extension ShoppingItem {
    init(shoppingItemDB: ShoppingItemDB) {
        id = shoppingItemDB.id
        title = shoppingItemDB.title
        notes = shoppingItemDB.notes
        bought = shoppingItemDB.bought
        quantity = shoppingItemDB.quantity
    }
}
