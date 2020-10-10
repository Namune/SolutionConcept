//
//  ScrollRecommendationView_Home.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct ScrollRecommendationView_Home: View {
    
    @EnvironmentObject var eventVM : EventViewModel
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(eventVM.listEventRec.indices, id: \.self) {idx in
                    VStack{
                        Text("ini Image")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.init(UIColor.green))
                        Text(eventVM.listEventRec[idx].name)
                        Text(eventVM.listEventRec[idx].desc)
                    }
                    
                }
            }
        }
    }
}

struct ScrollRecommendationView_Home_Previews: PreviewProvider {
    static var previews: some View {
        ScrollRecommendationView_Home().environmentObject(EventViewModel())
    }
}
