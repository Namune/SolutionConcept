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
                    .padding(.bottom, -140)
                VStack{
                    Text("Ini Image")
                    Text("Name")
                }

            }
            List{
                ZStack {
                    background()
                    NavigationLink(
                        destination: PersonalInfoView(),
                        label: {
                            Text("Personal Information")
                        })
                        .padding()
                }
                ZStack {
                    background()
                    NavigationLink(
                        destination: SavedProfileView().environmentObject(ContactViewModel()),
                        label: {
                            Text("Saved Profiles")
                        })
                        .padding()
                }
                ZStack {
                    background()
                    NavigationLink(
                        destination: TrackedArtistView(),
                        label: {
                            Text("Tracked Artist")
                        })
                        .padding()
                        .padding(.vertical, 15)
                }
            }
            Button(action: {
                print("log out")
            }, label: {
                Text("Log Out")
            })
            
            
            
            Spacer()
        }
    }
}

extension ProfileView{
    func background() -> some View {
        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(Color(red: 199.0/255, green: 228.0/255, blue: 228.0/255, opacity: 1.0))
            .frame(width: UIScreen.main.bounds.width * 0.9, height : UIScreen.main.bounds.height * 0.05, alignment: .leading)
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
