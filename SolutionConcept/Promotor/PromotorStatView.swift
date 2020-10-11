//
//  PromotorStatView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct PromotorStatView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("download")
            }, label: {
                Text("Download full summary")
                    .foregroundColor(.black)
                    .modifier(ButtonModifier())
            })
            ScrollView{
                Image("stats")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : UIScreen.main.bounds.width * 0.9)
                
            }
                
                
        }
        .navigationBarTitle("Concert Summary", displayMode: .inline)
    }
}

struct PromotorStatView_Previews: PreviewProvider {
    static var previews: some View {
        PromotorStatView()
    }
}
