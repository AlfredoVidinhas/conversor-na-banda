//
//  MoedaListView.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 31/07/2022.
//

import SwiftUI

struct MoedaListView: View {
    
    @ObservedObject var viewModel: TaxasBaiWiseViewModel
    @State var offset: CGFloat = 0
    
    var height = UIScreen.main.bounds.height
    
    var body: some View {
        VStack() {
            Spacer()
            
            VStack() {
                HStack() {
                    
                }
                .padding(.bottom, 40)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 10) {
                        ForEach(viewModel.moedas) { moeda in
                            MenuItemView()
                                .onTapGesture {
                                    viewModel.currentMoeda = moeda
                                    withAnimation() {
                                        viewModel.showButtonSheet = false
                                    }
                                }
                        }
                    }
                    .padding(.horizontal, Constants.horizontalPadding)
                })
                    .frame(height: self.height / 1.25)
                
            }
            .background(Color.accentColor.clipShape(CustomCorner(corners: [.topLeft, .topRight])))
            .offset(y: offset)
            .gesture(DragGesture().onChanged(onChanged(value: )).onEnded(onEnded(value:)))
            .offset(y: viewModel.showButtonSheet ? 0 : height)
            
        }
        .ignoresSafeArea()
        .background(
            Color.black.opacity(viewModel.showButtonSheet ? 0.3 : 0).ignoresSafeArea()
                .onTapGesture {
                    withAnimation(){
                        viewModel.showButtonSheet = false
                    }
                }
        )
    }
    
    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 {
            offset = value.translation.height
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        if value.translation.height > 0 {
            withAnimation(Animation.easeIn(duration: 0.2)) {
                if value.translation.height > height / 3 {
                    viewModel.showButtonSheet = false
                }
                offset = 0
            }
        }
    }
}

struct MoedaListView_Previews: PreviewProvider {
    static var previews: some View {
        MoedaListView(viewModel: TaxasBaiWiseViewModel())
    }
}
