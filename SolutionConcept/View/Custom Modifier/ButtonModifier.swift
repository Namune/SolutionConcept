//
//  LeadingModifier.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: LeadingModifier.windowWidth()*0.9, height: LeadingModifier.windowHeight() * 0.05, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 40).fill(Color("button")))
            
    }
}

