//
//  TaxasBaiWiseViewModel.swift
//  Conversor da banda
//
//  Created by Alfredo Vidinhas on 31/07/2022.
//

import SwiftUI

class TaxasBaiWiseViewModel: ObservableObject{
    @Published var showButtonSheet = false
    @Published var moedas = [ Moeda(name: "Euro", flag: "euro"), Moeda(name: "Dolar", flag: "us") ]
    @Published var currentMoeda = Moeda(name: "Euro", flag: "euro")
}
