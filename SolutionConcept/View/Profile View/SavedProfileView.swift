//
//  SavedProfileView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI

struct SavedProfileView: View {
    
    @EnvironmentObject var contactVM : ContactViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(contactVM.listContact.indices, id: \.self) {idx in
                    VStack(alignment: .leading){
                        Text(contactVM.listContact[idx].name)
                            .padding(.top, 2)
                        HStack {
                            Text(contactVM.listContact[idx].email)
                                .padding(.vertical, 2)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        Text(contactVM.listContact[idx].number)
                            .padding(.bottom, 2)
                        }
                    .padding()
                    }
                    

                
            }
            .navigationBarTitle("Saved Profiles", displayMode: .inline)
            .navigationBarItems(trailing: Text("Add")
                                    .foregroundColor(.blue))
        }
    }
}

struct SavedProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SavedProfileView().environmentObject(ContactViewModel())
    }
}
