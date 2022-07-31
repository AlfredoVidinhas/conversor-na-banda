//
//  BlurView.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 31/07/2022.
//

import SwiftUI

struct BlurView : UIViewRepresentable {
    @Binding var blurEffect: UIBlurEffect.Style
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: blurEffect))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    
    }
}
