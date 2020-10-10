//
//  HomeView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchItem : String = ""
    @State private var isEditing = false
    
    var body: some View {
        Group {
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding()
                    TextField("Search by Concert or Artist", text: $searchItem)
                        .onTapGesture(perform: {
                            isEditing = true
                        })
                    Spacer()
                    if isEditing{
                        HStack{
                            Button(action: {
                                searchItem = ""
                            }, label: {
                                Image(systemName: "xmark.circle")
                                    .foregroundColor(.black)
                            })
                            Button(action: {
                                isEditing = false
                                searchItem = ""
                                hidekeyboard()
                            }, label: {
                                Text("Cancel")
                            })
                        }
                    }
                }
                    .padding()
                // lagi ga ada search
                if !isEditing{
                    VStack {
                        HStack {
                            Text("Now Trending")
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                            
                        }
                        BannerView_Home().environmentObject(EventViewModel())
                        Text("Recommendation")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                        ScrollRecommendationView_Home().environmentObject(EventViewModel())
                            .padding(.horizontal)

                    }
                    
                    Spacer()
                    VStack{
                        NavigationLink(
                            destination: ConcertView(),
                            label: {
                                Text("Navigate")
                            })
                        Text("Ini Home")
                    }
                    
                //ada yang di search
                }else if searchItem == "Search"{
                    SearchView()
                //nunggu result
                }else{
                    EmptyView()
                }
                
                Spacer()
            }
//            .navigationBarTitle("Home")
//            .navigationBarHidden(true)
        }
            

        
            
    }
}

extension HomeView{
    func hidekeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(EventViewModel())
    }
}
