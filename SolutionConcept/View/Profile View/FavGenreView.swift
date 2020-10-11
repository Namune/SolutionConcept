//
//  FavGenreView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 12/10/20.
//

import SwiftUI

struct FavGenreView: View {
    var body: some View {
        ScrollView(.vertical) {
            Image("fav")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }
        .navigationBarTitle("Favorite Genres", displayMode: .inline)
        .navigationBarItems(trailing:
                                NavigationLink(
                                    destination: AddGenre(),
                                    label: {
                                        Text("Add")
                                    }))
    }
}

struct FavGenreView_Previews: PreviewProvider {
    static var previews: some View {
        FavGenreView()
    }
}
