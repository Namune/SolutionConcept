//
//  HomeView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchItem : String = ""
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding()
                TextField("Search by Concert or Artist", text: $searchItem)
            }
            BannerView_Home()
                .padding()
            Spacer()
            // lagi ga ada search
            if searchItem == ""{
                Text("Ini Home")
            //ada yang di search
            }else{
                SearchView()
            }
            
            Spacer()
        }
        
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(EventViewModel())
    }
}
