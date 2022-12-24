//
//  ContactInfoView.swift
//  ContactListSUI
//
//  Created by Buba on 24.12.2022.
//

import SwiftUI

struct ContactInfoView: View {
    let contact: Person
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            HStack(spacing: 20) {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(contact.phoneNumber)
            }
            HStack(spacing: 20) {
                Image(systemName: "envelope")
                    .foregroundColor(.blue)
                Text(contact.email)
            }
        }
        .listStyle(.grouped)
        .navigationTitle(contact.fullName)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Person(id: 1, name: "", lastName: "", phoneNumber: "", email: ""))
    }
}
