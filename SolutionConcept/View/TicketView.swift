//
//  TicketView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        VStack {
            NavigationLink(
                destination: ConcertView(),
                label: {
                    Text("Navigate")
                })
            Text("Ini Tiket")
        }
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
