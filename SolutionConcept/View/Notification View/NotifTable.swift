//
//  NotifTable.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct NotifTable: View {
    var body: some View {
        List{
            ZStack {
                background()
                HStack {
                    Text("Ini Image")
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.init(UIColor.green))
                        .padding(.leading)
                        
                    VStack {
                        Text("Coachella 2021")
                            .frame(width: 230,alignment: .leading)
                        NavigationLink(
                            destination: PersonalInfoView(),
                            label: {
                                Text("Hey, Katie Wilson! Your order for Coachella has been verified. You can also click here too see your ticket!")
                                    .font(.caption2)
                                    .frame(width: 190,alignment: .leading)
                            })
                            .padding(.trailing)
                        Text("Purchase Order")
                            .font(.caption)
                            .padding(1)
                            .background(RoundedRectangle(cornerRadius: 40).fill(Color(UIColor.green)))
                            .frame(width: 230, alignment: .leading)
                            

                    }
                }
            
                
            }
            ZStack {
                backgroundWhite()
                HStack {
                    Text("Ini Image")
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.init(UIColor.green))
                        .padding(.leading)
                        
                    VStack {
                        Text("Coachella 2021")
                            .frame(width: 230,alignment: .leading)
                        NavigationLink(
                            destination: PersonalInfoView(),
                            label: {
                                Text("Hey, Katie Wilson! Your order for Coachella has been verified. You can also click here too see your ticket!")
                                    .font(.caption2)
                                    .frame(width: 190,alignment: .leading)
                            })
                            .padding(.trailing)
                        Text("Purchase Order")
                            .font(.caption)
                            .padding(1)
                            .background(RoundedRectangle(cornerRadius: 40).fill(Color(UIColor.green)))
                            .frame(width: 230, alignment: .leading)
                            

                    }
                }
            
                
            }
        }
    }
}

extension NotifTable{
    func background() -> some View{
        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(Color(red: 199.0/255, green: 228.0/255, blue: 228.0/255, opacity: 1.0))
            .frame(width: UIScreen.main.bounds.width * 0.9, height : UIScreen.main.bounds.height * 0.16, alignment: .leading)
    }
    func backgroundWhite() -> some View{
        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(Color(UIColor.white))
            .frame(width: UIScreen.main.bounds.width * 0.9, height : UIScreen.main.bounds.height * 0.16, alignment: .leading)
    }
}

struct NotifTable_Previews: PreviewProvider {
    static var previews: some View {
        NotifTable()
    }
}
