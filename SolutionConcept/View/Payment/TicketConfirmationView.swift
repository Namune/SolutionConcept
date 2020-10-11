//
//  TicketConfirmation.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct TicketConfirmationView: View {
    @State var jumlah = 1
    var menu = ["Katie Wilson", "Jacob Mark", "Andrew Nguyen"]
    @State var segmen = 0
    var body: some View {
        VStack(alignment: .leading) {
            Text("Concert Detail")
                .font(.caption)
            HStack{
                Image("coachT")
                    .resizable()
                    .frame(width: 105, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text("Coachella Valley Music And Arts Festival")
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
                .font(.caption)
            ZStack {
                Image("ticket")
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
            HStack {
                Text("Quantity (pax)")
                Button(action: {
                    if jumlah <= 1{
                        
                    }else{
                        jumlah -= 1
                    }
                }, label: {
                    Image(systemName: "minus.circle")
                        .padding(.leading, 170)
                })
                
                Text(String(jumlah))
                Button(action: {
                    jumlah += 1
                }, label: {
                    Image(systemName: "plus.circle")
                })
     
            }
            ScrollView(.vertical){
                ForEach((1...jumlah), id: \.self) { idx in
                    Picker("Choose Costumer", selection: $segmen) {
                                    ForEach(0..<menu.count) { index in
                                        Text(self.menu[index]).tag(index)
                                    }
                                }
                    .pickerStyle(DefaultPickerStyle())
                    .modifier(LeadingModifier())
                    .padding()
                    .modifier(LeadingModifier())
                }
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
