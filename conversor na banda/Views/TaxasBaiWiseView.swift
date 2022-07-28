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
                VStack() {
                    
                }
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
