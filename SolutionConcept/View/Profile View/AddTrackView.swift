//
//  AddTrackView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct AddTrackView: View {
    
    @EnvironmentObject var navVM : NavigationData
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
            if searchItem == "Black"
            {
                VStack(alignment: .leading) {
                    HStack {
                        Image("blackpinkB")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.1, alignment: .center)
                            .padding(.leading, -18)
                    
                    Text("BlackPink")
                        Spacer()
                    Button(action: {
                        print("order")
                    }, label: {
                        Text("Tract")
                            .padding(.horizontal)
                            .padding(2)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor.green)))
                            .padding()
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
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .navigationBarTitle("Tracked Artist", displayMode: .inline)
        
    }

}

struct RecArtist : View{
    
    private var imageArray = ["daveB","btsB"]
    private var name = ["Dave Koz","BTS"]

    
    var body : some View{
        VStack (alignment: .leading) {
            Text("Recommended Artist")
                .font(.title2)
                .fontWeight(.bold)
                .modifier(LeadingModifier())
                .padding(.leading)
            ForEach(imageArray.indices, id: \.self) { idx in
                HStack {
                    Image(imageArray[idx])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.1, alignment: .center)
                    Text(name[idx])
                    Spacer()
                    Text("Tract")
                        .padding(.horizontal)
                        .padding(2)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor.green)))
                        .padding()
                        
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
        AddTrackView().environmentObject(NavigationData())
    }
}
