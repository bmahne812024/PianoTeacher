//
//  Lesson 3.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 11/5/24.
//

import SwiftUI
struct Lesson_3_View: View {
    @Binding var videoUrlAsString: String
    var body: some View {
        NavigationStack() {
            ZStack {
                LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView {
                    ForEach(readingLesson_3) {readingLesson_3 in
                        
                        if readingLesson_3.videoString > "" {
                            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                VStack() {
                                    Image(readingLesson_3.lessonImageUrl)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                        .padding(10.0)
                                        .shadow(radius: 10, y: 10)
                                    
                                    Text("\(readingLesson_3.name)")
                                        .foregroundColor(.white)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                }
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                videoUrlAsString = readingLesson_3.videoString
                            })
                            Spacer()
                            Spacer()
                    }
                        if readingLesson_3.handoutString > "" {
                            Link(destination: URL(string: "\(readingLesson_3.handoutString)")!, label: {
                                Image("PDF")
                                    .resizable()
                                    .frame(width: 30, height: 40)
                                Text("\(readingLesson_3.handoutTitle)")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            })
                        }
                        Spacer()
                        Spacer()
                        if readingLesson_3.playalongSlow > "" {
                            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white)
                                Text("Playalong - Slow")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                videoUrlAsString = readingLesson_3.playalongSlow
                            })
                            Spacer()
                            Spacer()
                        }
                        
                        if readingLesson_3.playalongMedium > "" {
                            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white)
                                Text("Playalong - Medium")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                videoUrlAsString = readingLesson_3.playalongMedium
                            })
                            Spacer()
                            Spacer()
                            
                        }
                        
                        if readingLesson_3.playalongFast > "" {
                            NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                Text(Image(systemName: "video"))
                                    .foregroundStyle(Color.white)
                                Text("Playalong - Fast")
                                    .font(.title2)
                                    .foregroundStyle(Color.white)
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                videoUrlAsString = readingLesson_3.playalongFast
                            })
                            Spacer()
                            Spacer()
                        }
                        Divider()
                            .overlay(.white)
                    }
                }
            }
        }
    }
}


struct Lesson_3_Preview: PreviewProvider {
    static var previews: some View {
        Lesson_3_View(videoUrlAsString: .constant(""))
    }
}
