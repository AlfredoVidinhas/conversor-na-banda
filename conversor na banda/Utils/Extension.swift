//
//  Extension.swift
//  conversor na banda
//
//  Created by Alfredo Vidinhas on 26/07/2022.
//

import SwiftUI

extension UIDevice {
    var hasTopNotch: Bool {
        let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }
}
