//
//  OnBoarding.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct OnBoarding: View {

    var body: some View {
        VStack {
            TabView{
                Onboarding1View()
                Onboarding2View()
                Onboarding3View()
            }
            
            .tabViewStyle(PageTabViewStyle())
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 1.05)
            .edgesIgnoringSafeArea(.top)
            .statusBar(hidden: true)
        }
        
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
