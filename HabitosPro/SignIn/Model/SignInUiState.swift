//
//  SignInUiState.swift
//  HabitosPro
//
//  Created by Patrick Alves on 13/01/23.
//

import Foundation
enum SignInUIState: Equatable {
  case none
  case loading
  case goToHomeScreen
  case error(String)
}
