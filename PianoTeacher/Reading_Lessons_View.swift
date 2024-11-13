//
//  Reading_Lessons_View.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 10/27/24.
//
import SwiftUI

struct Reading_Lessons_View: View {
    @Binding var videoUrlAsString: String
    var body: some View {
       
            NavigationStack{
                ZStack {
                    LinearGradient(colors: [.purple, .black], startPoint: .top, endPoint: .bottom)
                            .ignoresSafeArea()
                    
                    VStack{
                        Text("Reading Lessons")
                            .font(.title2)
                            .foregroundStyle(Color.accentColor)
                    
                    
                        ScrollView {
                            NavigationLink(
                                destination: Lesson_1_View(videoUrlAsString: $videoUrlAsString)) {
                                    HStack {
                                        Text("Lesson 1")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundStyle(Color.accentColor)
                                        Spacer()
                                        VStack {
                                            Text("C Scale/")
                                                .foregroundStyle(Color.white)
                                            Text("Fundamentals")
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
                            
                            NavigationLink(
                                destination: Lesson_2_View(videoUrlAsString: $videoUrlAsString)) {
                                    HStack {
                                        Text("Lesson 2")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundStyle(Color.accentColor)
                                        Spacer()
                                        VStack {
                                            Text("G Major/")
                                                .foregroundStyle(Color.white)
                                            Text("Chords")
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
                            
                            NavigationLink(
                                destination: Lesson_3_View(videoUrlAsString: $videoUrlAsString)) {
                                    HStack {
                                        Text("Lesson 3")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundStyle(Color.accentColor)
                                        Spacer()
                                        VStack {
                                            Text("New keys/")
                                                .foregroundStyle(Color.white)
                                            Text("Ear training and voice leading")
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



struct Reading_Lessons_Preview: PreviewProvider {
    static var previews: some View {
        Reading_Lessons_View(videoUrlAsString: .constant(""))
        
    }
}
