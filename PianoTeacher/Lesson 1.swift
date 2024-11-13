//
//  Lesson 1.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 10/27/24.
//

import SwiftUI
struct Lesson_1_View: View {
    
    @Binding var videoUrlAsString: String
    var body: some View {
        NavigationStack() {
            ZStack {
                LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView {
                        ForEach(readingLesson_1) {readingLesson_1 in
                                NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                    VStack() {
                                        Image(readingLesson_1.lessonImageUrl)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                            .padding(10.0)
                                            .shadow(radius: 10, y: 10)
                                            
                                        Text("\(readingLesson_1.name)")
                                                .foregroundColor(.white)
                                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    }
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    videoUrlAsString = readingLesson_1.videoString
                                })
                                Spacer()
                                Spacer()
                                if readingLesson_1.handoutString > "" {
                                    Link(destination: URL(string: "\(readingLesson_1.handoutString)")!, label: {
                                            Image("PDF")
                                                .resizable()
                                                .frame(width: 30, height: 40)
                                        Text("\(readingLesson_1.handoutTitle)")
                                                .font(.title2)
                                                .foregroundStyle(Color.white)
                                    })
                                }
                                Spacer()
                                Spacer()
                                if readingLesson_1.playalongSlow > "" {
                                    NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                        Text(Image(systemName: "video"))
                                                .foregroundStyle(Color.white)
                                        Text("Playalong - Slow")
                                                .font(.title2)
                                                .foregroundStyle(Color.white)
                                    }
                                    .simultaneousGesture(TapGesture().onEnded {
                                            videoUrlAsString = readingLesson_1.playalongSlow
                                        })
                                        Spacer()
                                        Spacer()
                                    }
                                    
                                    if readingLesson_1.playalongMedium > "" {
                                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                            Text(Image(systemName: "video"))
                                                .foregroundStyle(Color.white)
                                            Text("Playalong - Medium")
                                                .font(.title2)
                                                .foregroundStyle(Color.white)
                                        }
                                        .simultaneousGesture(TapGesture().onEnded {
                                            videoUrlAsString = readingLesson_1.playalongMedium
                                        })
                                        Spacer()
                                        Spacer()
                                        
                                    }
                                    
                                    if readingLesson_1.playalongFast > "" {
                                        NavigationLink(destination: VideoViewer(videoUrlAsString: $videoUrlAsString)) {
                                            Text(Image(systemName: "video"))
                                                .foregroundStyle(Color.white)
                                            Text("Playalong - Fast")
                                                .font(.title2)
                                                .foregroundStyle(Color.white)
                                        }
                                        .simultaneousGesture(TapGesture().onEnded {
                                            videoUrlAsString = readingLesson_1.playalongFast
                                        })
                                        Spacer()
                                        Spacer()
                                    }
                                    Divider()
                                        .overlay(.white)
                        
                    }
                }
                //.listRowBackground(Color(UIColor.systemGroupedBackground))
                .padding()
            }
        }
        
    }

}

struct Lesson_1_Preview: PreviewProvider {
    static var previews: some View {
        Lesson_1_View(videoUrlAsString: .constant(""))
        
    }
}
