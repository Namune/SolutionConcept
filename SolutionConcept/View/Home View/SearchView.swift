//
//  SearchView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack{
            Image("java")
                .cornerRadius(20)
                .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.yellow, lineWidth: 2)
                    )
            VStack(alignment: .leading){
                Text("Java Jazz Festival")
                    .fontWeight(.medium)
                HStack {
                    Image(systemName: "calendar")
                    Text("Monday, 7 Sep 2020")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }.padding(1)
                
                HStack {
                    Image(systemName: "clock")
                    Text("15.00 - 22.00 WIB")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }
                
                
            }
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
