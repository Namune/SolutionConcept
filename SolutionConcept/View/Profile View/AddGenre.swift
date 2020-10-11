//
//  AddGenre.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct AddGenre: View {
    
    @State var searchItem = ""
    @State var isEditing = false
    
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding()
                TextField("Search by Concert or Artist", text: $searchItem)
                    .onTapGesture(perform: {
                        isEditing = true
                    })
                    .padding(5)
                    
                Spacer()
                if isEditing{
                    HStack{
                        Button(action: {
                            isEditing = false
                            searchItem = ""
                            hidekeyboard()
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.black)
                        })
                        .padding(.horizontal)
                    }
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("GoldYellow"), lineWidth: 1)
            ).padding()
            ScrollView{
                Image("genre")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .navigationBarTitle("Favorite Genres", displayMode: .inline)
    }
}
extension AddGenre{
    func hidekeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
struct AddGenre_Previews: PreviewProvider {
    static var previews: some View {
        AddGenre()
    }
}
