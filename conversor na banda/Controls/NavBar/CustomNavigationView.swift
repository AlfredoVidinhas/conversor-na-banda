//
//  CustomNavigationView.swift
//  kino-transports
//
//  Created by Alfredo Vidinhas on 27/01/22.
//

import SwiftUI

struct CustomNavigationView: View {
    @Environment(\.presentationMode) var presentationMode
    let title: String
    
    var body: some View {
        HStack{
            backButton
            Spacer()
            titleSection
            Spacer()
            HStack{}
            .frame(width: 35, height: 35).padding(.trailing, Constants.horizontalPadding)
        }
        .padding(.top, UIDevice.current.hasTopNotch ? 10 : 15)
        .padding(.bottom, 25)
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomNavigationView(title: "Titulo Header")
            Spacer()
        }
    }
}

extension CustomNavigationView {
    private var backButton: some View {
        Button(action: {
            withAnimation{
                let impactMed = UIImpactFeedbackGenerator(style: .medium)
                impactMed.impactOccurred()
                presentationMode.wrappedValue.dismiss()
            }
        }, label: {
            Image(systemName: "chevron.left")
                .accentColor(.white)
                .font(.system(size: 18, weight: .medium))
                .frame(width: 35, height: 35)
                .background(Color("Quaternary"))
                .cornerRadius(10)
                .padding(.leading, Constants.horizontalPadding)
        })
    }
    
    private var titleSection: some View {
        VStack {
            Text(title)
                .font(Font.custom("Poppins-SemiBold", size: 18))
                .foregroundColor(.white)
        }
    }
}
