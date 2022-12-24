//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Buba on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Text("Contacts")
                    Image(systemName: "person.3.fill")
                }
            NumbersView()
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
