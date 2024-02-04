//
//  ShoppingFormView.swift
//  RealmUsingSwiftUI
//
//  Created by Code with Shamshad on 04/02/24.
//

import Foundation
import SwiftUI

struct ShoppingFormView: View {

    @EnvironmentObject var store: ShoppingStore
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var form: ShoppingForm
    let quantityOptions = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $form.title)

                Picker(selection: $form.quantity, label: Text("Quantity")) {
                    ForEach(quantityOptions, id: \.self) { option in
                        Text("\(option)")
                            .tag(option)
                    }
                }

                Section(header: Text("Notes 📒")) {
                    TextField("", text: $form.notes)
                }
            }
            .navigationBarTitle("Shopping Form", displayMode: .inline)
            .navigationBarItems(leading: Button("Cancel", action: dismiss), trailing: Button(form.updating ? "Update" : "Save", action: save))
        }
    }
}

// MARK:- Actions

extension ShoppingFormView {
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }

    func save() {
        if form.updating, let id = form.shoppingItemId {
            store.updateItem(itemId: id, title: form.title, notes: form.notes, quantity: form.quantity)
        } else {
            store.create(title: form.title, notes: form.notes, quantity: form.quantity)
        }

        dismiss()
    }
}
