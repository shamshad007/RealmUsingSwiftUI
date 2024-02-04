//
//  RealmUsingSwiftUIApp.swift
//  RealmUsingSwiftUI
//
//  Created by Code with Shamshad on 04/02/24.
//

import SwiftUI

@main
struct RealmUsingSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ShoppingStore(realm: RealmPersistent.initializer()))
        }
    }
}
