//
//  ContentView.swift
//  conversor na banda
//
//  Created by Alfredo Vidinhas on 26/07/2022.
//

import SwiftUI
import Combine

struct SplashView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.accentColor
                .ignoresSafeArea()
                
                VStack(alignment: .center){
                    Image("logo_white")
                        .resizable()
                        .padding(.top, 60)
                        .offset(y: -60)
                        .frame(maxWidth: 185, maxHeight: 168)
                        
                    Spacer()
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
