//
//  TicketPurchasedView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct TicketPurchasedView: View {
    
    @EnvironmentObject var navFlow : NavigationFlowObject
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Image("depan")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    Image("belakang")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    
                        .navigationBarTitle("Ticket Purchased", displayMode: .inline)
                        .navigationBarItems(trailing:
                                                Button(action: {
                                                    
                                                }, label: {
                                                    Image(systemName: "square.and.arrow.down")
                                                }))
                }
            }
            
            Button(action: {
//                navFlow.isActive = false
            }, label: {
                Text("Back to Home")
                    .modifier(ButtonModifier())
                    .padding(.top, 5)
                    .foregroundColor(.black)
            })
        }
    }
}

struct TicketPurchasedView_Previews: PreviewProvider {
    static var previews: some View {
        TicketPurchasedView().environmentObject(NavigationFlowObject())
    }
}
