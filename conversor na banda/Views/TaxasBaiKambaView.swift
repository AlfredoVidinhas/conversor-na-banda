//
//  TaxasBaiKambaView.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 27/07/2022.
//

import SwiftUI

struct TaxasBaiKambaView: View {
    var body: some View {
        ZStack() {
            Color.accentColor
                .ignoresSafeArea()
            
            CustomNavigationContainerView {
                VStack() {
                    
                }
                .customNavigationTitle("Taxas para BAI Kamba")
            }
        }
    }
}

struct TaxasBaiKambaView_Previews: PreviewProvider {
    static var previews: some View {
        TaxasBaiKambaView()
    }
}
