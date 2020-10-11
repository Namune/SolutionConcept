//
//  Navigation.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import Foundation
import Combine
import SwiftUI

class NavigationData: ObservableObject {
    @Published var navToggle = false
    func reloadDashboard(){
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.reloadDashboard()
    }
}
