//
//  MainVC.swift
//  Not Hesapla SwitUI
//
//  Created by Doğukan Çatmakaş on 2.05.2023.
//

import SwiftUI

struct MainVC: View {
    var body: some View {
        
        TabView {
            
            HomeVC()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            SettingsVC()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                }
        }
    }
}

struct MainVC_Previews: PreviewProvider {
    static var previews: some View {
        MainVC()
    }
}

struct HomeVC: View {
    var body: some View {
        
        NavigationView {
            
            ExtractedView()
        }
    }
}

struct SettingsVC: View {
    var body: some View {
        Text("2")
            .font(.largeTitle)
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack {
            
            //                Text("Hoş Geldin Doğukan")
            //                    .font(.largeTitle)
            //                    .fontWeight(.bold)
            //                    .padding(.leading, -45)
            //                    .padding()
            //                    .frame(height: 150)
            Spacer()
            
            NavigationLink(destination: NewCalculateVC()) {
                Text("Yeni Hesaplama")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, maxHeight: 170)
                    .padding()
                    .background(Color("BlueColor"))
                    .foregroundColor(Color(.white))
                    .cornerRadius(30)
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            NavigationLink(destination: LessonsVC()) {
                Text("Derslerim")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, maxHeight: 170)
                    .padding()
                    .background(Color("BlueColor"))
                    .foregroundColor(Color(.white))
                    .cornerRadius(30)
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            Spacer()
            
        }
        .navigationTitle("Hoş Geldin Doğukan")
    }
}
