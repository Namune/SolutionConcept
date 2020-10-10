//
//  LeadingModifier.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct LeadingModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: LeadingModifier.windowWidth()*0.9, alignment: .leading)

    }
    static func windowHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }

    static func windowWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
}

