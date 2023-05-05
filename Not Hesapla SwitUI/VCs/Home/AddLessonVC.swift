//
//  AddLessonVC.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 5.05.2023.
//

import SwiftUI

struct AddLessonVC: View {
    
    @State private var lessonName: String = ""
    @State private var midtermRate: String = ""
    @State private var passNote: String = ""
    @State private var showAlert = false
    
    var lesson : Lesson?
    var savedButtonTapped : (_ result: String) -> Void = {_ in
        
    }
    
    var body: some View {
        
        VStack {
            
            TextField("Ders Adı", text: $lessonName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
            
            TextField("Vize Yüzdesi", text: $midtermRate)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .keyboardType(.numberPad)
            
            TextField("Geçme Notu", text: $passNote)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .keyboardType(.numberPad)
            
            Spacer()
            
            Button {
                addNewLesson()
            } label: {
                Text("Kaydet")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20).fill(.green).frame(width: 200, height: 60))
                    .foregroundColor(.white)
            }
            .padding()
            Spacer()

            
        }
    }
    
    func addNewLesson() {
        
        if lessonName != "" && midtermRate != "" && passNote != "" {
            if let vize = Float(midtermRate) {
                if let gecmeNotu = Float(passNote) {
                    if vize <= 100 && vize >= 0 {
                        if gecmeNotu <= 100 && gecmeNotu >= 0 {
                            
                            savedButtonTapped("")
                            if let lesson = self.lesson {
                                lesson.name = lessonName
                                lesson.midtermRate = vize
                                lesson.passNote = gecmeNotu
                                Defaults.updateLesson(lesson)
                                
                            } else {
                                let lesson = Lesson(name: lessonName, midtermRate: vize, passNote: gecmeNotu)
                                Defaults.addLesson(lesson)
                            }
                        } else {
                            makeAlert(title: "Hata!", message: "Geçme Notu 0 ile 100 Arasında Olmalıdır.")
                        }
                    } else {
                        makeAlert(title: "Hata!", message: "Vize Yüzdesi 0 ile 100 Arasında Olmalıdır.")
                    }
                }
            }
        } else {
            makeAlert(title: "Hata!", message: "Lütfen Boş Kutucuk Bırakmayınız.")
        }
    }
    
    func makeAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}

struct AddLessonVC_Previews: PreviewProvider {
    static var previews: some View {
        AddLessonVC()
    }
}
