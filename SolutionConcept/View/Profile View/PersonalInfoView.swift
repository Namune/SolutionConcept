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
            Text("Ini Image")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Change profil picture")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Divider()
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
                
                Spacer()
                
                
                .navigationBarTitle("Account Information", displayMode: .inline)
        }
    }
}

struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfoView()
    }
}
