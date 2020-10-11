//
//  ConcertView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct ConcertView: View {
    
    @State private var fav : Bool = false
    @State private var segmen = 0
    var menu = ["Event Details", "Ticket Categories"]
    
    var body: some View {
        
        VStack {
            ZStack {
                Image("detail")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom, -140)
                
            }
            Group{
                HStack {
                    Text("Coachella Valley Music And Arts Festival")
                        .font(.title)
                        .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .leading)
                    Image(systemName: "square.and.arrow.up")
                    Button(action: {
                            changeFav()}, label: {
                                if fav {
                                    Image(systemName: "heart.fill")
                                }else {
                                    Image(systemName: "heart")
                                }
                            })
                }
                HStack {
                    Image(systemName: "calendar")
                    Text("Saturday, 23 March 2021")
                }
                .modifier(LeadingModifier())
                HStack {
                    Image(systemName: "clock")
                    Text("11.00 - 21.00 WIB")
                }
                .modifier(LeadingModifier())
            }
            
            Picker("", selection: $segmen) {
                            ForEach(0..<menu.count) { index in
                                Text(self.menu[index]).tag(index)
                            }
                        }
            .pickerStyle(SegmentedPickerStyle())
            .modifier(LeadingModifier())
            .padding()
            ScrollView(.vertical){
                if segmen == 0{
                    EventDetails()
                }else{
                    TicketPrice()
                }
            }

        }
        
        }
}

extension ConcertView{
    func changeFav(){
        fav.toggle()
    }
}

struct ConcertView_Previews: PreviewProvider {
    static var previews: some View {
        ConcertView()
    }
}
