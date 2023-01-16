//
//  SignUpViewModel.swift
//  HabitosPro
//
//  Created by Patrick Alves on 16/01/23.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
    
    @Published var uiState: SignUpUIState = .none
    
}

extension SignInViewModel {
  func homeView() -> some View {
    return SignInViewRouter.makeHomeView()

  }
}
