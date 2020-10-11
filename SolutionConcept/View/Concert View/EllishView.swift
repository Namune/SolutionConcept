//
//  EllishView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct EllishView: View {
    @State private var fav : Bool = false
    @State private var segmen = 0
    
    var body: some View {
        
        VStack {
            ZStack {
                Image("ellishD")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom, -140)
                
            }
            Group{
                HStack {
                    Text("“Where Do We Go” by Billie Eillish")
                        .font(.title2)
                        .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .leading)
                        .padding(.bottom)
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
                Group{
                    HStack {
                        Image(systemName: "calendar")
                        Text("Saturday, 27 June 2020")
                    }
                    .modifier(LeadingModifier())
                    HStack {
                        Image(systemName: "clock")
                        Text("18.00 - 21.00 WIB")
                        Spacer()
                        NavigationLink(
                            destination: VideoView(),
                            label: {
                                Text("Watch Now")
                                    .foregroundColor(.black)
                                    .padding(6)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("GoldYellow")))
                            })
                    }
                    .modifier(LeadingModifier())
                }

            }
            
            ScrollView(.vertical, showsIndicators: false){
                if segmen == 0{
                    EllishDetail()
                }else{
                    TicketPrice()
                }
            }

        }
        
        }
}

extension EllishView{
    func changeFav(){
        fav.toggle()
    }
}

struct EllishView_Previews: PreviewProvider {
    static var previews: some View {
        EllishView()
    }
}
