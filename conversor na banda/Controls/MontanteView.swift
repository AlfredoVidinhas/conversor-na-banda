//
//  MontanteView.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 28/07/2022.
//

import SwiftUI
import Combine

struct MontanteView: View {
    @State private var montante = ""
    
    var body: some View {
        HStack() {
            HStack() {
                Image("euro")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 35, maxHeight: 24)
                    .overlay(
                        BorderView(radius: 0.2)
                    )
                
                Text("Euro")
                    .foregroundColor(Color.white)
                    .font(Font.custom("Poppins-SemiBold", size: 16))
                    .padding(.leading, 1)
                
                Image(systemName: "chevron.down")
                    .foregroundColor(.white)
                    .font(.system(size: 13, weight: .semibold))
                
                
                TextField("Montante", text: $montante)
                    .font(Font.custom("Poppins-SemiBold", size: 18))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.white)
                    .accentColor(.white)
                    
                    .keyboardType(.numberPad)
                    .onReceive(Just(montante)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.montante = filtered
                        }
                    }
                
                
            }
            .frame(maxHeight: 45)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(LinearGradient(gradient: Gradient(colors: [Color("Quaternary"), Color("Tertiary")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(13)
        .overlay(
            BorderView(opacity: 0.08)
        )
        .shadow(color: Color("Shadow"), radius: 20, x: 0, y: 4)
    }
}

struct MontanteView_Previews: PreviewProvider {
    static var previews: some View {
        MontanteView()
    }
}
