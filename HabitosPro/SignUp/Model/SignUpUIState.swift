//
//  SignUpUIState.swift
//  HabitosPro
//
//  Created by Patrick Alves on 16/01/23.
//

import Foundation

enum SignUpUIState: Equatable {
    case none
    case loading
    case success
    case error(String)
}
