//
//  ContentView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

final class NavigationFlowObject: ObservableObject {
    @Published var isActive: Bool = false
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView{
                HomeView()
                    .tabItem {
                          Image(systemName: "music.house.fill")
                          Text("Home")
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                TicketView()
                    .tabItem {
                          Image(systemName: "heart")
                          Text("Ticket")
                    }
                NotificationView()
                    .tabItem {
                          Image(systemName: "bell.fill")
                          Text("Notification")
                    }
                ProfileView()
                    .tabItem {
                          Image(systemName: "person.circle.fill")
                          Text("Profile")
                }
            }
            .tabViewStyle(DefaultTabViewStyle())
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
