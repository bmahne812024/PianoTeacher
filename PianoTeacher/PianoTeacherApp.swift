//
//  PianoTeacherApp.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 10/23/24.
//

import SwiftUI

@main
struct PianoTeacherApp: App {
    @State private var videoUrlAsString = ""
    var body: some Scene {
        WindowGroup {
            ContentView(videoUrlAsString: $videoUrlAsString)
        }
    }
}

