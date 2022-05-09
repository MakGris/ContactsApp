//
//  Person.swift
//  ContactBook
//
//  Created by Maksim Grischenko on 05.05.2022.
//

//import Foundation

struct Person: Equatable {
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
    let email: String
    let phone: String
    
    static func getPerson() -> [Person] {
        let data = DataManager()
        var persons = [Person]()
        let name = data.names.shuffled()
        let surname = data.surnames.shuffled()
        let email = data.emails.shuffled()
        let phone = data.phoneNumbers.shuffled()
        
        for index in 0...9 {
            let somePerson = Person(
                name: name[index],
                surname: surname[index],
                email: email[index],
                phone: phone[index])
            persons.append(somePerson)
        }
        return persons
}
}
