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
    @State var eventSegmen = true
    
    var body: some View {
        
        VStack {
            Text("Concerts For You")
                .font(.system(size: 24, weight: .bold))
                .padding()
                .modifier(LeadingModifier())
            HStack {
                VStack {
                    Button(action: {
                        eventSegmen = true
                    }, label: {
                        VStack {
                            Text("Upcoming")
                                .frame(width: UIScreen.main.bounds.width * 0.4)
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .semibold))
                            if eventSegmen{
                                goldUnder()
                            }else{
                                whiteUnder()
                            }
                        }
                        
                    })
                }
                VStack {
                    Button(action: {
                        eventSegmen = false
                    }, label: {
                        VStack {
                            Text("Past")
                                .frame(width: UIScreen.main.bounds.width * 0.4)
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .semibold))
                            if !eventSegmen{
                                goldUnder()
                            }else{
                                whiteUnder()
                            }
                        }
                        
                    })
                    
                    
                }
                
            }
            .frame(width: UIScreen.main.bounds.width)
            .padding()
            if eventSegmen{
                UpcomingTicketView().environmentObject(EventViewModel())
                    .modifier(LeadingModifier())
                Spacer()
            }else{
                PastTicketView()
                    .modifier(LeadingModifier())
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
