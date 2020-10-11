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
            VStack{
                Image("katie")
                    .padding()
                Text("Katie Wilson")
                    .padding(.bottom)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color("soft"))
                VStack{
                    HStack {
                        NavigationLink(
                            destination: PersonalInfoView(),
                            label: {
                                Text("Account Information")
                                    .foregroundColor(.black)
                                    .frame(width: LeadingModifier.windowWidth()*0.80, alignment: .leading)
                        })
                        Image(systemName: "chevron.right")
                    }
                    
                    Divider()
                    
                    HStack {
                        NavigationLink(
                            destination: SavedProfileView().environmentObject(ContactViewModel()),
                            label: {
                                Text("Saved profiles")
                                    .foregroundColor(.black)
                                    .frame(width: LeadingModifier.windowWidth()*0.80, alignment: .leading)
                        })
                        Image(systemName: "chevron.right")
                    }
                }

            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 100, alignment: .leading)
            .padding(.bottom)
            ZStack{
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color("soft"))
                VStack{
                    HStack {
                        NavigationLink(
                            destination: TrackedArtistView().environmentObject(NavigationData()),
                            label: {
                                Text("Tracked Artist")
                                    .foregroundColor(.black)
                                    .frame(width: LeadingModifier.windowWidth()*0.80, alignment: .leading)
                        })
                        Image(systemName: "chevron.right")
                    }
                    
                    Divider()
                    
                    HStack {
                        NavigationLink(
                            destination: PersonalInfoView(),
                            label: {
                                Text("Favorite Genres")
                                    .foregroundColor(.black)
                                    .frame(width: LeadingModifier.windowWidth()*0.80, alignment: .leading)
                        })
                        Image(systemName: "chevron.right")
                    }
                }

            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 100, alignment: .leading)
            .padding(.bottom)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color("soft"))
                VStack{
                    HStack {
                        NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Terms of Use")
                                    .foregroundColor(.black)
                                    .frame(width: LeadingModifier.windowWidth()*0.80, alignment: .leading)
                        })
                        Image(systemName: "chevron.right")
                    }
                    
                    Divider()
                    
                    HStack {
                        NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Privacy Policy")
                                    .foregroundColor(.black)
                                    .frame(width: LeadingModifier.windowWidth()*0.80, alignment: .leading)
                        })
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                    
                    HStack {
                        NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Give Us Feedback")
                                    .foregroundColor(.black)
                                    .frame(width: LeadingModifier.windowWidth()*0.84, alignment: .leading)
                        })
                    }
                    
                }

            }
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 150, alignment: .leading)
            

            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
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
