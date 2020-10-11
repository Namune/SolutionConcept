//
//  TrackedArtistView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct TrackedArtistView: View {
    
    @EnvironmentObject var navVM : NavigationData
    private var imageArray = ["adamB","justinB","ellishB","raisaB","tulusB"]
    private var name = ["Adam Lavine","Justin Bieber","Billie Ellish","Raisa","Tulus"]
    
    @State var add : Bool = false
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                NavigationLink(
                    destination: AddTrackView().environmentObject(NavigationData()),
                    isActive: $navVM.navToggle,
                    label: {
                        EmptyView()
                    })
                ForEach(imageArray.indices, id: \.self) { idx in
                    HStack {
                        Image(imageArray[idx])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.1, alignment: .center)
                        Text(name[idx])
                        Spacer()
                        Text("Untract")
                            .padding(4)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("softButton")))
                    }
                }
                .padding()

            }
            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            .navigationBarTitle("Tracked Artist", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        changeAdd()
                                    }, label: {
                                        Text("Add")
                                }))
        }

        
        
    }
}

extension TrackedArtistView{
    func changeAdd(){
        add.toggle()
        navVM.navToggle = true
    }
}
struct TrackedArtistView_Previews: PreviewProvider {
    static var previews: some View {
        TrackedArtistView().environmentObject(NavigationData())
    }
}
