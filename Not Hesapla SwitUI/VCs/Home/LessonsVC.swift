//
//  LessonsVC.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 4.05.2023.
//

import SwiftUI

private var lessons = ["mat", "fen", "istatistik"]

struct LessonsVC: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(lessons, id: \.self) { lesson in
                    NavigationLink(destination: LessonDetail(lesson: lesson)) {
                        Text(lesson)
                    }
                }
                .onDelete { indexSet in
                    lessons.remove(atOffsets: indexSet)
                }
            }
            .navigationTitle("Derslerim")
        }
    }
}

struct LessonDetail: View {
    var lesson: String
    
    var body: some View {
        VStack {
            Text("Detaylar için: \(lesson)")
                .font(.title)
            // Detay görünümünün içeriği
        }
        .navigationTitle(lesson)
    }
}

struct LessonsVC_Previews: PreviewProvider {
    static var previews: some View {
        LessonsVC()
    }
}

