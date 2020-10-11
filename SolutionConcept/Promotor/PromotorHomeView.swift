//
//  PromotorHomeView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct PromotorHomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: PromotorStatView(),
                    label: {
                        Image("proHome")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    })

                Spacer()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct PromotorHomeView_Previews: PreviewProvider {
    static var previews: some View {
        PromotorHomeView()
    }
}
