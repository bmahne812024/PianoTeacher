//
//  ContentView.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 10/23/24.
//

import SwiftUI


struct ContentView: View {
    
    @Binding var videoUrlAsString: String
    var body: some View {
            
        NavigationStack() {
        ZStack {
            LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack() {
                HStack {
                    Spacer()
                    Text("OML")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(.accentColor)
                    Spacer()
                    
                }
                VStack {
                    Text("Online Music Lessons")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                    Text("Piano Course")
                        .font(.title2)
                        .italic()
                        .foregroundStyle(Color.white)
                    
                }
                
                ScrollView {
                        
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            ZStack() {
                                Image("introstill")
                                    .resizable()
                                    .opacity(0.50)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                    .aspectRatio(contentMode: .fit)
                                    
                                    .padding(40.0)
                                    .shadow(radius: 10, y: 10)
                                
                                //.background(.black)
                                Text("Introduction")
                                    .foregroundColor(Color.white)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/IntroVideo.mp4?alt=media&token=3006ee92-cf37-433c-b572-e50d6c9cd4bb"
                        })
                    
             
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                        NavigationLink(
                            destination: Reading_Lessons_View(videoUrlAsString: $videoUrlAsString)) {
                                ZStack {
                                    Image("sheet music")
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                        .opacity(0.5)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.horizontal, 20)
                                        
                                    VStack {
                                        Spacer()
                                        Text("Reading")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundStyle(Color.accentColor)
                                        //Spacer()
                                        VStack {
                                            Text("Reading Music")
                                                .foregroundStyle(Color.white)
                                            Text("Funndamentals")
                                                .foregroundStyle(Color.white)
                                        }
                                        Spacer()
                                                                               
                                    }
                                    
                                    
                                    .padding(.horizontal, 30.0)
                                }
                            }
                            .padding()
                    
                    NavigationLink(
                        destination: Reading_Lessons_View(videoUrlAsString: $videoUrlAsString)) {
                            HStack {
                                Text("Improv")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.accentColor)
                                Spacer()
                                VStack {
                                    Text("Improvise/")
                                        .foregroundStyle(Color.white)
                                    Text("Soloing")
                                        .foregroundStyle(Color.white)
                                }
                                Spacer()
                                Text(Image(systemName: "arrow.forward"))
                                    .foregroundStyle(Color.white)
                                
                            }
                            .padding()
                            .border(Color.white)
                            .padding(.horizontal, 32.0)
                        }
                        .padding()
                    }
                    
                    
                    
                }
                
                
                
                
            }
        }
    }
}

#Preview {
    ContentView(videoUrlAsString: .constant("https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.01%205%20Finger%20Scale%20and%20C%20Triad.mp4?alt=media&token=e05be21e-a3f8-4651-b7fd-250d043bbb25"))
}
