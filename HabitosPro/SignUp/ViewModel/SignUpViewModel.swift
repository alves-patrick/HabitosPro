//
//  SignUpViewModel.swift
//  HabitosPro
//
//  Created by Patrick Alves on 16/01/23.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
    
    @Published var uiState: SignUpUIState = .none
    
    func SignUp() {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.uiState = .error("Usuario ja existente")
         // self.uiState = .goToHomeScreen
        }
        
        
    }
    
}

extension SignUpViewModel {
  func homeView() -> some View {
    return SignInViewRouter.makeHomeView()

  }
}
