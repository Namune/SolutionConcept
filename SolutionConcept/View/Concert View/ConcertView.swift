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
    @State var eventSegmen = true
    
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
                        //.font(.title)
                        .font(.system(size: 20, weight:.bold))
                        .padding(.bottom, 5.0)
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
                        .font(.system(size: 12))
                }
                .modifier(LeadingModifier())
                HStack {
                    Image(systemName: "clock")
                    Text("11.00 - 21.00 WIB")
                        .font(.system(size: 12))
                }
                .modifier(LeadingModifier())
            }
            HStack {
                VStack {
                    Button(action: {
                        eventSegmen = true
                    }, label: {
                        VStack {
                            Text("Concert Details")
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
                            Text("Ticket Categories")
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
//            Picker("", selection: $segmen) {
//                            ForEach(0..<menu.count) { index in
//                                Text(self.menu[index]).tag(index)
//                            }
//                        }
//            .pickerStyle(SegmentedPickerStyle())
//            .modifier(LeadingModifier())
//            .padding()
            ScrollView(.vertical, showsIndicators: false){
                if eventSegmen {
                    EventDetails()
                }else{
                    TicketPrice()
                }
            }

        }
        
        }
}
func goldUnder() -> some View{
    Color("GoldYellow")
        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.002)
        .padding(.top, -5)
}
func whiteUnder() -> some View{
    Color(UIColor.white)
        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.002)
        .padding(.top, -5)
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
