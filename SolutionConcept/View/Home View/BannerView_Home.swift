//
//  BannerView_Home.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct BannerView_Home: View {
    
    @EnvironmentObject var eventVM : EventViewModel
    @EnvironmentObject var navFlow : NavigationFlowObject
    
    private var imageArray : [String] =
        ["coach","ellish","super8"]
    @State var goActive : Bool = false
    
    var body: some View {
        TabView{
            ForEach(eventVM.listEvent.indices, id: \.self) {idx in
                VStack{
                    NavigationLink(
                        destination: ConcertView(), isActive: $navFlow.isActive)
                            {
                            EmptyView()
                            }.isDetailLink(false)
                    Image(imageArray[idx])
                        .resizable()
                        .cornerRadius(20)
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.yellow, lineWidth: 2)
                            )
                        .onTapGesture(perform: {
                            navFlow.isActive = true
                        })
                    
                    }
                }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//        .background(Color.init(UIColor.green))
        
    }
}

struct BannerView_Home_Previews: PreviewProvider {
    static var previews: some View {
        BannerView_Home().environmentObject(EventViewModel()).environmentObject(NavigationFlowObject())
    }
}
