//
//  TrackedArtistView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct TrackedArtistView: View {
    
    @State var add : Bool = false
    
    var body: some View {
        if add{
            AddTrackView()
                .navigationBarTitle("Tracked Artist", displayMode: .inline)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            changeAdd()
                                        }, label: {
                                            Text("Done")
                                        }))
        }else{
            VStack {
                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    HStack {
                        Text("Ini Image")
                            .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.init(UIColor.green))
                            .padding(.leading)
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding()

            }
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
    }
}
struct TrackedArtistView_Previews: PreviewProvider {
    static var previews: some View {
        TrackedArtistView()
    }
}
