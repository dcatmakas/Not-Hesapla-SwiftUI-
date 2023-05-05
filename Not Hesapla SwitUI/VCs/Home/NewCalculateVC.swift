//
//  NewCalculateVC.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 2.05.2023.
//

import SwiftUI

struct NewCalculateVC: View {
    
    @State private var lessonText: String = ""
    @State private var midtermText: String = ""
    @State private var finalText: String = ""
    @State private var extraText: String = ""
    
    var selectedLesson : Lesson?
    
    var body: some View {
        
        VStack {
                
            TextField("Ders", text: $lessonText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .keyboardType(.numberPad)
                
            TextField("Vize Notu", text: $midtermText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .keyboardType(.numberPad)
                
            TextField("Final Notu", text: $finalText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .keyboardType(.numberPad)
            
            TextField("Bütünleme Notu", text: $extraText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .keyboardType(.numberPad)
                .hidden()
            
            Spacer()
                
            Button {
                calculate()
            } label: {
                Text("Hesapla")
                    .padding()
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(.green).frame(width: 200, height: 60))
            }
            Spacer()
        }
        .navigationTitle("Yeni Hesaplama")
        .padding()
    }
    
    func calculate() {
        guard let selectedLesson = self.selectedLesson else {return}
                
        if lessonText != "" && midtermText != "" && finalText != "" {
            
            
        }
    }
    
}

struct NewCalculateVC_Previews: PreviewProvider {
    static var previews: some View {
        NewCalculateVC()
    }
}
