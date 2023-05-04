//
//  NewCalculateVC.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 2.05.2023.
//

import SwiftUI

struct NewCalculateVC: View {
    
    @State private var text: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                TextField("Ders", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                
                TextField("Vize Notu", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                
                TextField("Final Notu", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 30)
                    .padding(.vertical, 20)
                
                Spacer()
                
                Button {
                    print("hello")
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
    }
}

struct NewCalculateVC_Previews: PreviewProvider {
    static var previews: some View {
        NewCalculateVC()
    }
}
