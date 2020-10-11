//
//  AddTrackView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct AddTrackView: View {
    
    @State var isEditing : Bool = false
    @State var searchItem : String = ""
    
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
                    .stroke(Color.black, lineWidth: 1)
            ).padding()
            if searchItem == "Adam"
            {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Ini Image")
                            .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.init(UIColor.green))
                    
                    Text("Adam Smith")
                    Button(action: {
                        print("order")
                    }, label: {
                        Text("Track")
                            .frame(width: UIScreen.main.bounds.width * 0.15)
                            .background(RoundedRectangle(cornerRadius: 40).fill(Color(UIColor.green)))
                            .padding(.leading, 70)
                            .foregroundColor(.black)
                    })
                    
                    }
                    .padding(.leading)
                    Divider()
                }
            }
            RecArtist()
            Spacer()
        }
    }
}

struct RecArtist : View{
    var body : some View{
        VStack (alignment: .leading) {
            Text("Recommended Artist")
                .font(.title2)
                .fontWeight(.bold)
                .modifier(LeadingModifier())
                .padding(.leading)
            List(0..<2) { item in
                HStack {
                    Text("Ini Image")
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.init(UIColor.green))
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Button(action: {
                    print("order")
                }, label: {
                    Text("Track")
                        .frame(width: UIScreen.main.bounds.width * 0.15)
                        .background(RoundedRectangle(cornerRadius: 40).fill(Color(UIColor.green)))
                        .padding(.leading, 70)
                        .foregroundColor(.black)
                })
                
                }
            }
            .padding(.top)
        }
    }
}
extension AddTrackView{
    func hidekeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
struct AddTrackView_Previews: PreviewProvider {
    static var previews: some View {
        AddTrackView()
    }
}
