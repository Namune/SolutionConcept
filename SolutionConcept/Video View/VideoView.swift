//
//  VideoView.swift
//  SolutionConcept
//
//  Created by Kenji Surya Utama on 11/10/20.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    let avPlayer = AVPlayer(url: URL(string: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8")!)
    @State private var showingActionSheet = false
    @State private var emoticon = false
    
    var body: some View {
        VStack {
            ZStack {
                VideoPlayer(player: avPlayer)
                    .onAppear(){
                        avPlayer.play()
                    }
                    .frame(height: UIScreen.main.bounds.height * 0.33)
//                    .onTapGesture(count: 1, perform: {
//                        emoticon.toggle()
//                    })
                if emoticon == true{
                    Image("heartemo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .animation(.easeIn(duration: 10))
                }
                
                HStack {
                    Spacer()
                    EmoticonView()
                        .padding(.bottom, 150)
                        .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                            showingActionSheet = true
                        })
                }
                .actionSheet(isPresented: $showingActionSheet) {
                    ActionSheet(title: Text("Video Setting"), buttons: [
                        .default(Text("Quality - Auto (1080p)")) {},
                        .default(Text("Caption (off)")) { },
                        .default(Text("Watch in VR")) { },
                        .cancel()
                    ])
                }
                
            }
            .padding(.top, -53)
            
            ZStack {
                Color("concert")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(height: UIScreen.main.bounds.height * 0.65)
                    .padding(.top, -10)
                Image("chat")
                    .resizable()
                
            }
            Spacer()
        }
        .statusBar(hidden: true)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
