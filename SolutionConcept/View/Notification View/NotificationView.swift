//
//  NotificationView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            Text("Notification")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .modifier(LeadingModifier())
            ScrollView(.vertical) {
                Image("notif")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                    .navigationTitle("")
                    .navigationBarHidden(true)
            }
            Spacer()
        }
//        VStack {
//            Text("Notification")
//                .font(.title)
//                .fontWeight(.bold)
//                .padding()
//                .modifier(LeadingModifier())
//
//            ScrollView(.horizontal) {
//                HStack{
//                    Button(action: {
//                        print("order")
//                    }, label: {
//                        ZStack {
//                            Text("Purchase Order")
//                                .frame(width: UIScreen.main.bounds.width * 0.31)
//                                .background(RoundedRectangle(cornerRadius: 40).fill(Color(UIColor.green)))
//                        }
//                    })
//
//                    Button(action: {
//                        print("order")
//                    }, label: {
//                        Text("Verification")
//                            .frame(width: UIScreen.main.bounds.width * 0.25)
//                            .background(RoundedRectangle(cornerRadius: 40).fill(Color(UIColor.green)))
//                    })
//
//                    Button(action: {
//                        print("order")
//                    }, label: {
//                        Text("Reminder")
//                            .frame(width: UIScreen.main.bounds.width * 0.21)
//                            .background(RoundedRectangle(cornerRadius: 40).fill(Color(UIColor.green)))
//                    })
//                }
//                .modifier(LeadingModifier())
//                .navigationTitle("")
//                .navigationBarHidden(true)
//            }
//            .padding()
//            NotifTable()
//            Spacer()
//        }
    }
    
    func background() -> some View{
        RoundedRectangle(cornerRadius: 40, style: .continuous)
            .fill(Color(red: 199.0/255, green: 228.0/255, blue: 228.0/255, opacity: 1.0))
            .frame(width: LeadingModifier.windowWidth()*0.2, height: LeadingModifier.windowHeight()*0.03, alignment: .leading)
        }
    }


struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
