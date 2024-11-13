//
//  VideoView.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 10/23/24.
//

import AVKit
import SwiftUI
struct VideoViewer: View {

   
    @Binding var videoUrlAsString: String
    @State private var player = AVPlayer()
    //@State private var avpController = AVPlayerViewController()

    var body: some View {
        
        if let url = URL(string: videoUrlAsString) {
            //let request = URLRequest(url: url)
            VideoPlayer(player: player)
            
                .onAppear {
                    player = AVPlayer(url: url)
                    player.play()
                    do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                    } catch {
                        //Didn't work
                    }
                }
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}
