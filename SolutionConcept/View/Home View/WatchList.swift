//
//  WatchList.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct WatchList: View {
    
    @EnvironmentObject var eventVM : EventViewModel
    private var imageArray : [String] = ["lauv", "head"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(eventVM.listEventWL.indices, id: \.self) {idx in
                    VStack{
                        Image(imageArray[idx])
                            .cornerRadius(20)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.yellow, lineWidth: 2)
                                )
                        VStack(alignment: .leading){
                            Text(eventVM.listEventWL[idx].name)
                                .fontWeight(.medium)
                            HStack {
                                Image(systemName: "calendar")
                                Text(eventVM.listEventRec[idx].desc)
                                    .font(.caption)
                            }.padding(1)
                            
                            HStack {
                                Image(systemName: "clock")
                                Text(eventVM.listEventWL[idx].time ?? "")
                                    .font(.caption)
                            }
                            
                            
                        }
                        
                    }
                    
                    
                }
            }
        }
    }
}

struct WatchList_Previews: PreviewProvider {
    static var previews: some View {
        WatchList().environmentObject(EventViewModel())
    }
}
