//
//  TicketView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct TicketView: View {
    
    @State private var segmen = 0
    var menu = ["Upcoming", "Past"]
    
    var body: some View {
        
        VStack {
            Text("Concert For You")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .modifier(LeadingModifier())
            Picker("", selection: $segmen) {
                            ForEach(0..<menu.count) { index in
                                Text(self.menu[index]).tag(index)
                            }
                        }
            .pickerStyle(SegmentedPickerStyle())
            .modifier(LeadingModifier())
            .padding()
            if segmen == 0{
                UpcomingTicketView().environmentObject(EventViewModel())
                Spacer()
            }else{
                PastTicketView()
                Spacer()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
