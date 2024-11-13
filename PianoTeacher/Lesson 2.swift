//
//  Lesson 2.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 11/3/24.
//

import SwiftUI

struct Lesson_2_View: View {
    
    @Binding var videoUrlAsString: String
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView {
                    ForEach(readingLesson_2) {readingLesson_2 in
                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                            VStack {
                                Image(readingLesson_2.lessonImageUrl)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .padding(10.0)
                                    .shadow(radius: 10, y: 10)
                                
                                Text(readingLesson_2.name)
                                    .foregroundColor(.white)
                                    .font(.title)
                                
                            }
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            videoUrlAsString = readingLesson_2.videoString
                        })
                        
                        Spacer()
                        Spacer()
                        if readingLesson_2.handoutString > "" {
                            Link(destination: URL(string: "\(readingLesson_2.handoutString)")!, label: {
                                Image("PDF")
                                    .resizable()
                                    .frame(width: 30, height: 40)
                                Text("\(readingLesson_2.handoutTitle)")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            })
                        }
                        Spacer()
                        Spacer()
                        if readingLesson_2.playalongSlow > "" {
                            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white)
                                Text("Playalong - Slow")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                videoUrlAsString = readingLesson_2.playalongSlow
                            })
                            Spacer()
                            Spacer()
                        }
                        
                        if readingLesson_2.playalongMedium > "" {
                            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white)
                                Text("Playalong - Medium")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                videoUrlAsString = readingLesson_2.playalongMedium
                            })
                            Spacer()
                            Spacer()
                            
                        }
                        
                        if readingLesson_2.playalongFast > "" {
                            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white)
                                Text("Playalong - Fast")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                videoUrlAsString = readingLesson_2.playalongFast
                            })
                            Spacer()
                            Spacer()
                        }
                        Divider()
                            .overlay(.white)
                        
                            
                        
                    }
                }
                .padding()
            }
        }
    }
}

struct Lesson_2_Preview: PreviewProvider {
    static var previews: some View {
        Lesson_2_View(videoUrlAsString: .constant(""))
    }
}
