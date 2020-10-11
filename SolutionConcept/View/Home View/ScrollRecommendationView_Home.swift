//
//  ScrollRecommendationView_Home.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct ScrollRecommendationView_Home: View {
    
    @EnvironmentObject var eventVM : EventViewModel
    private var imageArray : [String] = ["java", "ellishP", "james", "raisa"]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(eventVM.listEventRec.indices, id: \.self) {idx in
                    VStack{
                        Image(imageArray[idx])
                            .cornerRadius(20)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.yellow, lineWidth: 2)
                                )
                        VStack(alignment: .leading){
                            Text(eventVM.listEventRec[idx].name)
                            Text(eventVM.listEventRec[idx].desc)
                        }
                        
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
