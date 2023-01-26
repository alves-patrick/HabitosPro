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
    
    var index: Self.AllCases.Index {
        return Self.allCases.firstIndex { self == $0 } ?? 0
    }
}
