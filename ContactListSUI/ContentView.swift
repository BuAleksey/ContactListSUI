//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Buba on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getPerson()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Text("Contacts")
                    Image(systemName: "person.3.fill")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Text("Numbers")
                    Image(systemName: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
