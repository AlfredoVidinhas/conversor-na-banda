//
//  MenuView.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 27/07/2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack() {
            Color.accentColor
                .ignoresSafeArea()
            
            VStack() {
                Image("logo")
                    .resizable()
                    .frame(maxWidth: 163, maxHeight: 103)
                
                VStack() {
                    MenuItemView(text: "Taxas para BAI Kamba", image: "bai")
                    
                    MenuItemView(text: "Conversão para Wise", image: "bai_wise")
                        .padding(.vertical, 16)
                    
                    MenuItemView(text: "Sugestões", image: "sugestao")
                }
                .padding(.top, 45)
                .padding(.horizontal, 20)
                
                Spacer()
            }
            .padding(.top, 25)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
