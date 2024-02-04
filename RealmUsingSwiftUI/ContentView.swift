//
//  ContentView.swift
//  RealmUsingSwiftUI
//
//  Created by Code with Shamshad on 04/02/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: ShoppingStore

    var body: some View {
        NavigationView {
            ShoppingItemListView(items: store.items, boughtItems: store.boughtItem)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
