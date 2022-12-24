//
//  ContactsView.swift
//  ContactListSUI
//
//  Created by Buba on 24.12.2022.
//

import SwiftUI

struct ContactsView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactInfoView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: [Person(
            id: 1,
            name: "Aleksey",
            lastName: "Bu",
            phoneNumber: "89037821216",
            email: "oldf03@gmail.com"
        )])
    }
}
