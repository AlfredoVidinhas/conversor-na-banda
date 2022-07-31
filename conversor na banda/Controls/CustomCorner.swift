//
//  CustomCorner.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 31/07/2022.
//

import SwiftUI

struct CustomCorner: Shape {
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
    
    
}
