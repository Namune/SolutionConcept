//
//  EventDetails.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct EventDetails: View {
    var body: some View {
        VStack{
            Text("Coachella is North America's most famous music festival, held each April at its now iconic home at the Empire Polo Club in Indio, California.\n\nA festival on every true music fan's bucket list, Coachella will make its eagerly anticipated return in April 2021 after a year off, once again returning with a world-beating lineup of some of music's biggest stars, covering a range of genres, including rock, indie, hip-hop and dance.\n\nCoachella's illustrious history has seen it feature legendary headline sets from the likes of Beyoncé, Daft Punk, Prince, Radiohead, and Bob Dylan over its two decade-long lifespan.")
                .modifier(LeadingModifier())
            HStack {
                Text("Featured Performer")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                    .frame(width: UIScreen.main.bounds.width * 0.73, alignment: .leading)
                Text("Show all")
                    .padding(.top)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            
            ScrollView(.horizontal){
                HStack{
                    VStack {
                        Text("ini Image")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.init(UIColor.green))
                        Text("nama orang")
                    }
                    VStack {
                        Text("ini Image")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.init(UIColor.green))
                        Text("nama orang")
                    }
                    VStack {
                        Text("ini Image")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.init(UIColor.green))
                        Text("nama orang")
                    }
                    
                }.padding(.horizontal)
            }
        }
        
    }
}

struct EventDetails_Previews: PreviewProvider {
    static var previews: some View {
        EventDetails()
    }
}
