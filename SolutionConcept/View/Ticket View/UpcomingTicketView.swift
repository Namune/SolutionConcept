//
//  UpcomingTicketView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct UpcomingTicketView: View {
    
    private var ImageArray : [String] = ["ellishP", "raisa", "lauv", "head"]
    @EnvironmentObject var eventVM : EventViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                ForEach(eventVM.listEventUp.indices, id: \.self) {idx in
                    HStack{
                        Image(ImageArray[idx])
                        VStack(alignment: .leading){
                            Text(eventVM.listEventUp[idx].name)
                                .fontWeight(.medium)
                            HStack {
                                Image(systemName: "calendar")
                                Text(eventVM.listEventUp[idx].desc)
                                    .font(.caption)
                            }.padding(1)
                            HStack {
                                Image(systemName: "clock")
                                Text(eventVM.listEventUp[idx].time ?? "")
                                    .font(.caption)
                        }
                    }
                }
            }
            }
        }
    }
}

struct UpcomingTicketView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingTicketView().environmentObject(EventViewModel())
    }
}
