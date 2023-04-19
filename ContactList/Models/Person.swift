//
//  Contact.swift
//  ContactList
//
//  Created by M I C H A E L on 19.04.2023.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let mail: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getContact() -> [Person] {
        let data = DataStore()
        var persons: [Person] = []
        
        let firstNames = Array(Set(data.firstNames))
        let lastNames = data.lastNames.shuffled()
        let phones = data.phones.shuffled()
        let mails = data.mails.shuffled()
        
        for number in 0..<data.firstNames.count {
            let person = Person(
                firstName: firstNames[number],
                lastName: lastNames[number],
                phone: phones[number],
                mail: mails[number]
            )
            persons.append(person)
        }
        
        return persons
    }
}
