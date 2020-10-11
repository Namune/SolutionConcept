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
    @State private var showingQualityActionSheet = false
    @State private var emoticon = false
    
    var body: some View {
        VStack {
            ZStack {
                VideoPlayer(player: avPlayer)
                    .onAppear(){
                        avPlayer.play()
                    }
                    .frame(height: UIScreen.main.bounds.height * 0.33)
                if emoticon == true{
                    Image("heartemo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .animation(.easeIn(duration: 10))
                }
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            emoticon.toggle()
                        }, label: {
                            Image("emo")
                                .foregroundColor(.white)
                                .padding(.bottom, 160)
                                .padding(.horizontal, -5)
                                .frame(width: 35)
                        })
                        Image("chattoggle")
                            .padding(.bottom, 160)
                            .frame(width: 35)
                        Image("info")
                            .padding(.bottom, 160)
                            .padding(.horizontal, -5)
                            .frame(width: 35)
                        Button(action: {
                            showingActionSheet = true
                        }, label: {
                            Image("burgerV")
                                .foregroundColor(.white)
                                .padding(.bottom, 160)
                                .padding(.horizontal)
                                .frame(width: 10)
                        })
                        .actionSheet(isPresented: $showingActionSheet) {
                            ActionSheet(title: Text("Video Setting"), buttons: [
                                .default(Text("Quality - Auto (1080p)")) {showingQualityActionSheet = true },
                                .default(Text("Caption (off)")) { },
                                .default(Text("Watch in VR")) { },
                                .cancel()
                            ])
                        }
                    }
                }
                
            }
            
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
