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
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            ContactView(image: "phone", text: contact.phoneNumber)
            ContactView(image: "envelope", text: contact.email)
        }
        .listStyle(.grouped)
        .navigationTitle(contact.fullName)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Person(
            id: 1,
            name: "Aleksey",
            lastName: "Bu",
            phoneNumber: "89037821216",
            email: "oldf03@gmail.com"
        ))
    }
}
