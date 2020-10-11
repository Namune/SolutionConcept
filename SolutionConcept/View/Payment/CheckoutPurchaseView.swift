//
//  CheckoutPurchaseView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct CheckoutPurchaseView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                Image("pay")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                    .navigationBarTitle("Checkout Purchase", displayMode: .inline)
            }
            VStack {
                HStack {
                    Text("Total")
                    Text("Rp2.864.000,00 ")
                        .padding(5)
                        .padding(.leading, 180)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                    NavigationLink(
                        destination: TicketPurchasedView(),
                        label: {
                            Text("Purchase Ticket")
                                .modifier(ButtonModifier())
                                .foregroundColor(.black)
                        })
                
            }
        }
    }
}

struct CheckoutPurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutPurchaseView()
    }
}
