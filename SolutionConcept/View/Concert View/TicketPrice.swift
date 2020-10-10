//
//  TicketPrice.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct TicketPrice: View {
    var body: some View {
        VStack {
            HStack{
                Text("Ticket Tier")
                    .rotationEffect(.degrees(-90))
                Text("- - - - - - - - -")
                    .rotationEffect(.degrees(-90))
                    .padding(.horizontal, -60)
                VStack {
                    Text("Privilege")
                    Text("Mobil")
                }
            }
            .modifier(LeadingModifier())
            .frame(height: UIScreen.main.bounds.height * 0.2)
            .background(Color(UIColor.green))
            .padding()
            HStack{
                Text("Ticket Tier")
                    .rotationEffect(.degrees(-90))
                Text("- - - - - - - - -")
                    .rotationEffect(.degrees(-90))
                    .padding(.horizontal, -60)
                VStack {
                    Text("Privilege")
                    Text("Mobil")
                }
            }
            .modifier(LeadingModifier())
            .frame(height: UIScreen.main.bounds.height * 0.2)
            .background(Color(UIColor.green))
            .padding()
        }
        
        
    }
}

struct TicketPrice_Previews: PreviewProvider {
    static var previews: some View {
        TicketPrice()
    }
}
