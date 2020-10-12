//
//  Onboarding2View.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct Onboarding2View: View {
    var body: some View {
        Image("on2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
