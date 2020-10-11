//
//  EllishDetail.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct EllishDetail: View {
    var body: some View {
        VStack{
            Text("Eilish's debut studio album, When We All Fall Asleep, Where Do We Go? (2019), debuted atop the Billboard 200 and became the best-performing album of 2019 in the US. It also reached number one in the UK.\n\nThe album contains six Billboard Hot 100 top 40 songs: \"When the Party's Over\", \"Bury a Friend\", \"Wish You Were Gay\", \"Xanny\" and \"Bad Guy\", the last of which became her first number one single in the US. In 2020, she performed the theme song \"No Time to Die\" for the James Bond film of the same name, which became her first to peak at number one in the UK.")
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
                        Image("ellishP")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Billie Ellish")
                            .fontWeight(.bold)
                    }
                }.padding(.horizontal)
            }
            HStack {
                Text("Genres")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                    .frame(width: UIScreen.main.bounds.width * 0.73, alignment: .leading)
                Text("Show all")
                    .padding(.top)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            ScrollView(.horizontal){
                Image("pop")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
}

struct EllishDetail_Previews: PreviewProvider {
    static var previews: some View {
        EllishDetail()
    }
}
