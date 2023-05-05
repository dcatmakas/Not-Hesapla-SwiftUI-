//
//  Defaults.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 5.05.2023.
//

import Foundation


class Defaults {
    
    static func updateLesson(_ lesson: Lesson) {
        var newArr = lessons
        if let index = newArr.firstIndex(where: {$0.id == lesson.id}) {
            newArr.remove(at: index)
            newArr.insert(lesson, at: index)
        }
        
        lessons = newArr
    }
    static func addLesson(_ lesson: Lesson) {
        var newArr = lessons
        newArr.append(lesson)
        lessons = newArr
    }
    static var lessons: [Lesson] {
            get {
                let data = UserDefaults.standard.array(forKey: "lessons")
                if let data = UserDefaults.standard.data(forKey: "lessons"),
                    let lessons = try? JSONDecoder().decode([Lesson].self, from: data) {
                    return lessons
                }
                return []
                
            }
            set {
                if let data = try? JSONEncoder().encode(newValue) {
                    UserDefaults.standard.set(data, forKey: "lessons")
                    UserDefaults.standard.synchronize()
                }
            }
        }
    }
