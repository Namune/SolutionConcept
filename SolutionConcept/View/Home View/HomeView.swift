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
                        .padding(5)
                        
                    Spacer()
                    if isEditing{
                        HStack{
//                            Button(action: {
//                                searchItem = ""
//                            }, label: {
//                                Image(systemName: "xmark.circle")
//                                    .foregroundColor(.black)
//                            })
                            Button(action: {
                                isEditing = false
                                searchItem = ""
                                hidekeyboard()
                            }, label: {
                                Image(systemName: "xmark.circle")
                            })
                            .padding(.trailing)
                        }
                    }
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("GoldYellow"), lineWidth: 1)
                )
                    .padding()
                // lagi ga ada search
                if !isEditing{
                    ScrollView(.vertical){
                    VStack {
                        HStack {
                            Text("Now Trending")
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
                            
                        }
                        
                        BannerView_Home().environmentObject(EventViewModel()).environmentObject(NavigationFlowObject())
                        
                            HStack {
                                Text("Recommendation")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .frame(width: UIScreen.main.bounds.width * 0.73, alignment: .leading)
                                Text("Show all")
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            }
                            ScrollRecommendationView_Home().environmentObject(EventViewModel())
                                .padding(.horizontal)
                            HStack {
                                Text("Watch List")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .frame(width: UIScreen.main.bounds.width * 0.73, alignment: .leading)
                                    .padding(.top, 5)
                                Text("Show all")
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    .padding(.top, 5)
                            }
                            WatchList().environmentObject(EventViewModel())
                                .padding(.horizontal)
                        }
                        

                    }
                    
                    Spacer()
                    
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
