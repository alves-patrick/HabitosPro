//
//  Gender.swift
//  HabitosPro
//
//  Created by Patrick Alves on 14/01/23.
//

import Foundation


enum Gender: String, CaseIterable, Identifiable {
    case male = "Masculino"
    case female = "Feminino"
    
    var id: String {
        self.rawValue
    }
}
