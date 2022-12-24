//
//  Person.swift
//  ContactListSUI
//
//  Created by Buba on 23.12.2022.
//

import Foundation

struct Person: Identifiable {
    var id: Int
    let name: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        let data = DataStore()
        var persons: [Person] = []
        
        let names = data.names.shuffled()
        let lastNames = data.lastNames.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        let emails = data.emails.shuffled()
        
        let minimumCount = min(
            names.count,
            lastNames.count,
            phoneNumbers.count,
            emails.count)
        
        for index in 0..<minimumCount {
            let person = Person(
                id: index,
                name: names[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
