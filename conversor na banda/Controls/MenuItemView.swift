//
//  MenuItemView.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 27/07/2022.
//

import SwiftUI

struct MenuItemView: View {
    @State var text: String = "Texto Menu"
    @State var image: String = "bai"
    
    var body: some View {
        HStack() {
            HStack() {
                Image(image)
                    .resizable()
                    .frame(maxWidth: 35, maxHeight: 35)
            }
            .frame(maxWidth: 45, maxHeight: 45)
            .background(Color("BackgroungImage"))
            .cornerRadius(13)
            .overlay(
                BorderView()
            )
            
            Text(text)
                .foregroundColor(Color.white)
                .font(Font.custom("Poppins-SemiBold", size: 16))
                .padding(.leading, 12)
            
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

struct BorderView: View {
    @State var opacity: Double = 0.10
    @State var radius: CGFloat = 13
    @State var lineWidth: CGFloat = 1.5
    
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .stroke(.white.opacity(opacity), lineWidth: lineWidth)
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
