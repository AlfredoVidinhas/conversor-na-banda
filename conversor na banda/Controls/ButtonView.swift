//
//  ButtonView.swift
//  conversor na banda
//
//  Created by Alfredo Vidinhas on 26/07/2022.
//

import SwiftUI

struct ButtonView: View {
    @State var text: String = ""
    
    var body: some View {
        Text(text)
            .frame(maxWidth: .infinity, maxHeight: 56)
            .foregroundColor(Color.white)
            .font(Font.custom("Poppins-SemiBold", size: 18))
            .background(Color("Secundary"))
            .cornerRadius(16)
            .padding(.bottom, 20)
            .shadow(color: Color("Shadow"), radius: 18, x: 0, y: 15)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Button")
    }
}
