//
//  ConcertView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct ConcertView: View {
    var body: some View {
        
            VStack {
                ZStack {
                    Color.init(UIColor.green)
                        .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .edgesIgnoringSafeArea(.all)
                    
                }
                Spacer()
            }
        
        }
}

struct ConcertView_Previews: PreviewProvider {
    static var previews: some View {
        ConcertView()
    }
}
