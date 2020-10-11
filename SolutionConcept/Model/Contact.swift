//
//  Contact.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import Foundation

struct Contact: Codable {
    
    public var id = UUID()
    public var name : String!
    public var email : String!
    public var number : String!
    
}

class ContactViewModel : ObservableObject {
    
    @Published var listContact: [Contact] = [
        Contact(id: UUID(), name: "Katie Wilson", email: "katie_wilson@gmail.com", number: "+45 7889 8532"),
        Contact(id: UUID(), name: "Jacob Mark", email: "jacobmark22@gmail.com", number: "+45 7819 8671"),
        Contact(id: UUID(), name: "Andrew Nguyen", email: "nguyen_andrew@gmail.com", number: "+62 8712 38891")
    ]
}
