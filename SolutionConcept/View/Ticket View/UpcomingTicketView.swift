//
//  UpcomingTicketView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct UpcomingTicketView: View {
    
    private var ImageArray : [String] = ["ellishK", "lauvK", "coachK", "headK"]
    @EnvironmentObject var eventVM : EventViewModel
    @State var goView = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                NavigationLink(
                    destination: EllishView(), isActive: $goView,
                    label: {
                        EmptyView()
                    })
                ForEach(eventVM.listEventUp.indices, id: \.self) {idx in
                    HStack{
                        Image(ImageArray[idx])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 105, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
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
                    .onTapGesture(count: 1, perform: {
                        goView = true
                    })
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
