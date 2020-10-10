//
//  Event.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import Foundation

struct Event: Codable {
    
    public var id = UUID()
    public var name : String!
    public var desc : String!
        
}

class EventViewModel: ObservableObject {
    
    @Published var listEvent: [Event] = [
        Event(id: UUID(), name: "Ed Sheeran", desc: "Paling Laku"),
        Event(id: UUID(), name: "Ari Laso", desc: "Asli Indonesia"),
        Event(id: UUID(), name: "Peterpan", desc: "Udah Ganti Nama")
    ]
    @Published var listEventRec: [Event] = [
        Event(id: UUID(), name: "Ed Sheeran", desc: "Paling Laku"),
        Event(id: UUID(), name: "Ari Laso", desc: "Asli Indonesia"),
        Event(id: UUID(), name: "Peterpan", desc: "Udah Ganti Nama"),
        Event(id: UUID(), name: "Ed Sheeran", desc: "Paling Laku"),
        Event(id: UUID(), name: "Ari Laso", desc: "Asli Indonesia"),
        Event(id: UUID(), name: "Peterpan", desc: "Udah Ganti Nama")
    ]
    @Published var listEventWL: [Event] = [
        Event(id: UUID(), name: "Ed Sheeran", desc: "Paling Laku"),
        Event(id: UUID(), name: "Ari Laso", desc: "Asli Indonesia"),
        Event(id: UUID(), name: "Peterpan", desc: "Udah Ganti Nama")
    ]
}

class DataSource: ObservableObject {
    @Published var users = ["Paul", "Taylor", "Adele"]
}
