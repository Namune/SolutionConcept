//
//  Onboarding3View.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct Onboarding3View: View {
    
    @EnvironmentObject var appState : NavigationData
    
    @State var go = false
    
    var body: some View {
        Image("on3")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .onTapGesture(perform: {
//                appState.reloadDashboard()
            })
    }
}


struct Onboarding3View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View().environmentObject(NavigationData())
    }
}
