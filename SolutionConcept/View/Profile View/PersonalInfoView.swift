//
//  PersonalInfoView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct PersonalInfoView: View {
    var body: some View {
        VStack {
            Image("katie")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            Text("Personal")
                .fontWeight(.bold)
                .modifier(LeadingModifier())
            List{
                HStack{
                    Text("Name")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("Katie Wilson")
                }
                HStack{
                    Text("Birthdate")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("22 May 2000")
                }
                HStack{
                    Text("Email")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("katie_wilson@gmail.com")
                }
                HStack{
                    Text("Phone Number")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("+45 7889 8532")
                }

            }
            .frame(height : UIScreen.main.bounds.height * 0.2)
            .padding(5)
            Text("Shipping")
                .fontWeight(.bold)
                .modifier(LeadingModifier())
            List{
                HStack{
                    Text("Address")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("Moon Valley Park, 32")
                }
                HStack{
                    Text("City")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("Surabaya")
                }
                HStack{
                    Text("State")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("Jawa Timur")
                }
                HStack{
                    Text("Country")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("Indonesia")
                }
                HStack{
                    Text("Postal Code")
                        .frame(width: UIScreen.main.bounds.width * 0.4,alignment: .leading)
                    Text("60123")
                }

            }
            .padding(5)
                
                Spacer()
            Text("Log Out")
                .fontWeight(.bold)
                        .foregroundColor(.red)
                
                
                .navigationBarTitle("Account Information", displayMode: .inline)
        }
    }
}

struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfoView()
    }
}
