//
//  LessonData.swift
//  PianoTeacher
//
//  Created by Brian Mahne on 10/23/24.
//

import SwiftUI

struct Lesson_1: Identifiable, Decodable {
    var id: Int
    var name: String
    var videoString: String
    var lessonImageUrl: String
    var handoutString: String
    var handoutTitle: String
    var playalongSlow: String
    var playalongMedium: String
    var playalongFast: String
}

struct Lesson_2: Identifiable, Decodable {
    var id: Int
    var name: String
    var videoString: String
    var lessonImageUrl: String
    var handoutString: String
    var handoutTitle: String
    var playalongSlow: String
    var playalongMedium: String
    var playalongFast: String
}

struct Lesson_3: Identifiable, Decodable {
    var id: Int
    var name: String
    var videoString: String
    var lessonImageUrl: String
    var handoutString: String
    var handoutTitle: String
    var playalongSlow: String
    var playalongMedium: String
    var playalongFast: String
}

var readingLesson_1: [Lesson_1] = load(_filename: "Lesson 1 Data.json")
var readingLesson_2: [Lesson_2] = load(_filename: "Lesson 2 Data.json")
var readingLesson_3: [Lesson_3] = load(_filename: "Lesson 3 Data.json")

func load<T: Decodable>(_filename:String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource:_filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(_filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(_filename) in main bundle")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse data")
    }
}
