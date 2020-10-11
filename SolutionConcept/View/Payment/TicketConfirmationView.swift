//
//  TicketConfirmation.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct TicketConfirmationView: View {
    @State var jumlah = 1
    var body: some View {
        VStack(alignment: .leading) {
            Text("Concert Detail")
            HStack{
                Image("coachT")
                    .resizable()
                    .frame(width: 105, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text("Coachella Valley Music And Arts Festival")
                        .font(.system(size: 16, weight: .bold))
                    HStack {
                        Image(systemName: "calendar")
                        Text("Saturday, 23 March 2021")
                            .font(.caption)
                    }.padding(1)
                    
                    HStack {
                        Image(systemName: "clock")
                        Text("11.00 - 21.00 WIB")
                            .font(.caption)
                    }
                }
            }
            Text("Choosen Ticket")
            VStack {
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
                HStack {
                    Text("3 pax")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    Spacer()
                    Text("Rp1.664.000,00 ")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                }

            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.18, alignment: .leading)
            .background(Color("soft"))
            
            //.border(Color.gray)
            .cornerRadius(16)
            .padding()
            HStack {
                Text("Quantity (pax)")
                
                Button(action: {
                    if jumlah <= 1{
                        
                    }else{
                        jumlah -= 1
                    }
                }, label: {
                    Image("minus")
                        .padding(.leading, 170)
                })
                
                Text(String(jumlah))
                    .padding(.horizontal)
                Button(action: {
                    jumlah += 1
                }, label: {
                    Image("plus")
                })
     
            }
            ScrollView(.vertical, showsIndicators: false){
                Image("merc")
                    .padding()
                
                    

                
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
                        destination: CheckoutPurchaseView(),
                        label: {
                            Text("Purchase Ticket")
                                .modifier(ButtonModifier())
                                .foregroundColor(.black)
                    })
                
            }
            
            
            
        }
        .navigationBarTitle("Ticket Confirmation", displayMode: .inline)
    }
}

struct TicketConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        TicketConfirmationView()
    }
}
