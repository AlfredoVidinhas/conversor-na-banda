//
//  ContentView.swift
//  conversor na banda
//
//  Created by Alfredo Vidinhas on 26/07/2022.
//

import SwiftUI
import Combine

struct SplashView: View {
    @State var isActive : Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.accentColor
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    Image("logo")
                        .resizable()
                        .offset(y: -60)
                        .frame(maxWidth: 173, maxHeight: 113)
                }
                
                NavigationLink(destination: MenuView().navigationBarHidden(true), isActive: self.$isActive) {
                    EmptyView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
