//
//  ShoppingItemDB.swift
//  RealmUsingSwiftUI
//
//  Created by Code with Shamshad on 04/02/24.
//

import Foundation
import RealmSwift

class ShoppingItemDB: Object {
    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var notes = ""
    @objc dynamic var quantity = 1
    @objc dynamic var bought = false

    override class func primaryKey() -> String? {
        "id"
    }
}
