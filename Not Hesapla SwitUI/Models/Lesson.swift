//
//  Lesson.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 5.05.2023.
//

import Foundation


class Lesson: Codable {
    var id: String
    var name: String
    var midtermRate : Float
    var passNote: Float
    
    init(name: String, midtermRate: Float, passNote: Float) {
        let uuid = UUID().uuidString
        self.id = uuid
        self.name = name
        self.midtermRate = midtermRate
        self.passNote = passNote
    }
    
    enum CodingKeys : CodingKey {
        case id
        case name
        case midtermRate
        case passNote
    }
}
