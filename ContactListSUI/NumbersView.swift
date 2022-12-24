//
//  NambersView.swift
//  ContactListSUI
//
//  Created by Buba on 24.12.2022.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    ContactView(image: "phone", text: contact.phoneNumber)
                    ContactView(image: "envelope", text: contact.email)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: [Person(
            id: 1,
            name: "Aleksey",
            lastName: "Bu",
            phoneNumber: "89037821216",
            email: "oldf03@gmail.com"
        )])
    }
}
