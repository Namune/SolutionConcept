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
            ZStack {
                Image("ticket_white")
                    .padding()
                HStack{
                    VStack(alignment: .leading){
                        Text("Diamond")
                            .fontWeight(.bold)
                        Text("1 x Coachella Printable Ticket")
                            .font(.caption)
                        Text("1 x Exclusive Merchandise (Photo + Sign)")
                            .font(.caption)
                        Text("Free join voice chat with performers and get ‘New Release Album’ (include sign)")
                            .font(.caption)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.6, alignment: .trailing)
                    
                }
            }
            ZStack {
                Image("ticket_white")
                    .padding()
                HStack{
                    VStack(alignment: .leading){
                        Text("Gold")
                            .fontWeight(.bold)
                        Text("1 x Coachella Printable Ticket")
                            .font(.caption)
                        Text("1 x Exclusive Merchandise (Photo + Sign)")
                            .font(.caption)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.6, alignment: .trailing)
                }
            }
            ZStack {
                Image("ticket_white")
                    .padding()
                HStack{
                    VStack(alignment: .leading){
                        Text("Silver")
                            .fontWeight(.bold)
                        Text("1 x Coachella Printable Ticket")
                            .font(.caption)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.5, alignment: .leading)
                }
            }
            Text("Watch with Friends!")
                .fontWeight(.bold)
                .modifier(LeadingModifier())
            HStack{
                Image("friend")
                    .padding()
                VStack(alignment :.leading){
                    Text("Invite your friends and get cheaper bundle!")
                        .fontWeight(.bold)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Text("2 x Coachella Gold Ticket")
                        .font(.caption)
                    Text("2 x Exclusive Merchandise (Photo + Sign)")
                        .font(.caption)
                }
                .frame(width: UIScreen.main.bounds.width * 0.65, height: UIScreen.main.bounds.height * 0.15, alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.15, alignment: .leading)
            .padding()
            HStack{
                Image("3tix")
                    .padding()
                VStack(alignment :.leading){
                    Text("Invite your friends and get cheaper bundle!")
                        .fontWeight(.bold)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Text("3 x Coachella Gold Ticket")
                        .font(.caption)
                    Text("3 x Exclusive Merchandise (Photo + Sign)")
                        .font(.caption)
                }
                .frame(width: UIScreen.main.bounds.width * 0.65, height: UIScreen.main.bounds.height * 0.15, alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.15, alignment: .leading)
            .background(Color("soft"))
            .padding()
            
            NavigationLink(
                destination: TicketConfirmationView(),
                label: {
                    Text("Choose Ticket")
                        .modifier(ButtonModifier())
                        .foregroundColor(.black)
                })
        }
            
        
        
    }
}

struct TicketPrice_Previews: PreviewProvider {
    static var previews: some View {
        TicketPrice()
    }
}
