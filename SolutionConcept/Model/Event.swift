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
    public var time : String?
        
}

class EventViewModel : ObservableObject {
    
    @Published var listEvent: [Event] = [
        Event(id: UUID(), name: "Ed Sheeran", desc: "Paling Laku"),
        Event(id: UUID(), name: "Ari Laso", desc: "Asli Indonesia"),
        Event(id: UUID(), name: "Peterpan", desc: "Udah Ganti Nama")
    ]
    @Published var listEventRec: [Event] = [
        Event(id: UUID(), name: "Java Jazz Festival", desc: "Monday, 7 Sep 2020",time: "15.00 - 22.00 WIB"),
        Event(id: UUID(), name: "Where Do We Go",desc: "Sunday, 25 Oct 2020", time: "16.00 - 20.00 WIB"),
        Event(id: UUID(), name: "James Bay Live", desc: "Saturday, 8 Aug 2020", time: "19.00 - 22.00 WIB"),
        Event(id: UUID(), name: "Live In Concert", desc: "Saturday, 27 June 2020", time: "18.00 - 21.00 WIB")
    ]
    @Published var listEventWL: [Event] = [
        Event(id: UUID(), name: "LAUV Summer Tour", desc: "Monday, 14 Sep 2020", time: "18.00 - 21.00 WIB"),
        Event(id: UUID(), name: "Heads in The Clouds", desc: "Saturday, 15 Aug 2020", time: "19.00 - 22.00 WIB"),
    ]
    @Published var listEventUp: [Event] = [
        Event(id: UUID(), name: "Where Do We Go", desc: "Saturday, 27 June 2020", time: "18.00 - 21.00 WIB"),
        Event(id: UUID(), name: "Live in Concert",desc: "Sunday, 25 Oct 2020", time: "16.00 - 20.00 WIB"),
        Event(id: UUID(), name: "LAUV Summer Tour", desc: "Monday, 14 Sep 2020", time: "18.00 - 21.00 WIB"),
        Event(id: UUID(), name: "Heads in The Clouds", desc: "Saturday, 15 Aug 2020", time: "19.00 - 22.00 WIB"),
    ]
}

class DataSource: ObservableObject {
    @Published var users = ["Paul", "Taylor", "Adele"]
}
