//
//  ContentView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 10/10/20.
//

import SwiftUI

final class NavigationFlowObject: ObservableObject {
    @Published var isActive: Bool = false
}

struct ContentView: View {
    
    @State var selected : Int = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            NavigationView {
                if selected == 0{
                    HomeView()
                        .edgesIgnoringSafeArea(.bottom)
                }else if selected == 1{
                    TicketView()
                }else if selected == 2{
                    NotificationView()
                }else{
                    ProfileView()
                }
                
                
            }
            FloatingTabbar(selected: $selected)
                .padding()
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FloatingTabbar : View {
    
    @Binding var selected : Int
    @State var expand = false
    
    var body : some View{
        
        HStack{
            
            Spacer(minLength: 0)
            
            HStack{
                
                if !expand{
                    
                    Button(action: {
                        
                        self.expand.toggle()
                        
                    }) {
                        
                        Image(systemName: "arrow.left").foregroundColor(.black).padding()
                    }
                }
                else{
                    
                    Button(action: {
                        
                        self.selected = 0
                        
                    }) {
                        
                        Image(systemName: "music.house.fill").foregroundColor(self.selected == 0 ? .black : .gray).padding(.horizontal)
                    }
                    
                    Spacer(minLength: 10)
                    
                    Button(action: {
                        
                        self.selected = 1
                        
                    }) {
                            Image(ticket())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 27, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(self.selected == 1 ? .black : .gray).padding(.horizontal)
                    }
                    
                    Spacer(minLength: 10)
                    
                    Button(action: {
                        
                        self.selected = 2
                        
                    }) {
                        
                        Image(systemName: "bell.fill").foregroundColor(self.selected == 2 ? .black : .gray).padding(.horizontal)
                    }
                    
                    Spacer(minLength: 10)
                    
                    Button(action: {
                        
                        self.selected = 3
                        
                    }) {
                        
                        Image(systemName: "person.circle.fill").foregroundColor(self.selected == 3 ? .black : .gray).padding(.horizontal)
                    }
                    
                    Spacer(minLength: 10)
                    
                    Button(action: {
                        
                        expand.toggle()
                        
                    }) {
                        
                        Image(systemName: "arrow.right").foregroundColor(.black).padding()
                    }
                }
                
                
            }.padding(.vertical,self.expand ? 7 : 8)
            .padding(.horizontal,self.expand ? 25 : 8)
            .background(Color.white)
            .clipShape(Capsule())
            .padding(22)
            .onLongPressGesture {
                    self.expand.toggle()
            }
            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6))
        }
        

    }
    func ticket() -> String {
        if selected == 1{
            return "ticketIcon"
        }else{
            return "ticketIconGray"
        }
    }
}
