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
            Image(image)
                .resizable()
                .frame(maxWidth: 50, maxHeight: 50)
            Text(text)
                .foregroundColor(Color.white)
                .font(Font.custom("Poppins-SemiBold", size: 18))
                .padding(.leading, 12)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(LinearGradient(gradient: Gradient(colors: [Color("Quaternary"), Color("Tertiary")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(13)
        .shadow(color: Color("Shadow"), radius: 20, x: 0, y: 4)
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
