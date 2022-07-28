//
//  TaxasBaiWiseView.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 28/07/2022.
//

import SwiftUI

struct TaxasBaiWiseView: View {
    var body: some View {
        ZStack() {
            Color.accentColor
                .ignoresSafeArea()
            
            CustomNavigationContainerView {
                VStack(alignment: .leading) {
                    Text("Montante")
                        .font(Font.custom("Poppins-SemiBold", size: 17))
                        .foregroundColor(Color.white)
                    
                    MontanteView()
                    
                    
                    Spacer()
                    
                    Button(action: {
                        let impactMed = UIImpactFeedbackGenerator(style: .medium)
                        impactMed.impactOccurred()
                    }, label: {
                        ButtonView(text: "Converter")
                    })
                }
                .padding(.horizontal, Constants.horizontalPadding)
                
                .customNavigationTitle("Conversão para Wise")
            }
        }
    }
}

struct TaxasBaiWiseView_Previews: PreviewProvider {
    static var previews: some View {
        TaxasBaiWiseView()
    }
}
