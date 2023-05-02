//
//  Home.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 30.04.2023.
//

import SwiftUI

struct FirstPageVC: View {
    @State private var isPresented: Bool = false
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text("Hoş Geldin!")
                .bold()
                .font(Font.system(size: 50))
                .padding(.vertical, 60)
            
            Spacer()
            
            HStack {
                Text("Lütfen Aşağıdaki Kutuya Adını Gir.")
                    .padding(.leading, 40)
                    .padding(.vertical)
                
                Spacer()
            }
            
            TextField("Adını Gir", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
            
            Spacer()
            
            Button {
                isPresented = true
            } label: {
                Text("Başlayalım")
                    .padding(.vertical, 15)
                    .padding(.horizontal, 30)
                    .font(Font.system(size: 20))
            }
            .background(Color(.blue))
            .foregroundColor(Color(.white))
            .cornerRadius(16)
            Spacer()
        }
        .fullScreenCover(isPresented: $isPresented, content: {
            MainVC()
        })
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        FirstPageVC()
    }
}

