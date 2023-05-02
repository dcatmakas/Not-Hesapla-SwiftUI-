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
                    .font(Font.system(size: 25))
                    .foregroundColor(.white)
                    .padding(.vertical, 80)
                    .padding(.horizontal, 80)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.blue)
                    )
            }
            .frame(height: 220)
            
            NavigationLink(destination: NewCalculateVC()) {
                Text("Derslerim")
                    .font(Font.system(size: 25))
                    .foregroundColor(.white)
                    .padding(.vertical, 80)
                    .padding(.horizontal, 114)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.blue)
                    )
            }
            .frame(height: 200)
            
            Spacer()
            
        }
        .navigationTitle("Hoş Geldin Doğukan")
    }
}
