//
//  PastTicketView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct PastTicketView: View {
    var body: some View {
        VStack {
            HStack{
                Image("super8K")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 105, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                VStack(alignment: .leading){
                    Text("James Bay Live")
                        .fontWeight(.medium)
                    HStack {
                        Image(systemName: "calendar")
                        Text("Saturday, 8 Aug 2020")
                            .font(.caption)
                    }.padding(1)
                    HStack {
                        Image(systemName: "clock")
                        Text("19.00 - 22.00 WIB")
                            .font(.caption)
                    }
                }
            }
        }
    }
}

struct PastTicketView_Previews: PreviewProvider {
    static var previews: some View {
        PastTicketView()
    }
}
