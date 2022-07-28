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
                    .frame(maxWidth: 133, maxHeight: 87)
                
                VStack() {
                    Button(action: {
                        let impactMed = UIImpactFeedbackGenerator(style: .medium)
                        impactMed.impactOccurred()
                    }, label: {
                        NavigationLink(destination: TaxasBaiKambaView().navigationBarHidden(true), label: {
                            MenuItemView(text: "Taxas para BAI Kamba", image: "bai")
                        })
                    })
                    
                    Button(action: {
                        let impactMed = UIImpactFeedbackGenerator(style: .medium)
                        impactMed.impactOccurred()
                    }, label: {
                        NavigationLink(destination: TaxasBaiWiseView().navigationBarHidden(true), label: {
                            MenuItemView(text: "Conversão para Wise", image: "bai_wise")
                                .padding(.vertical, 16)
                        })
                    })
                    
                    MenuItemView(text: "Sugestões", image: "sugestao")
                }
                .padding(.top, 50)
                .padding(.horizontal, 30)
                
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
