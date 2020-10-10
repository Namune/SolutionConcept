//
//  ProfileView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.init(UIColor.green)
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom, -30)
                VStack{
                    Text("Ini Image")
                    Text("Name")
                }

            }
            List{
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color(red: 199.0/255, green: 228.0/255, blue: 228.0/255, opacity: 1.0))
                        .frame(width: UIScreen.main.bounds.width * 0.9, height : UIScreen.main.bounds.height * 0.05, alignment: .leading)
                    HStack{
                        Text("Personal Information")
                            .padding()
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding()
                    }
                    
                }
            }
            
            
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
