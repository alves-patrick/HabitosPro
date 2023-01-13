//
//  SignInViewModel.swift
//  HabitosPro
//
//  Created by Patrick Alves on 05/01/23.
//

import SwiftUI

class SignInViewModel: ObservableObject {
 
        
        @Published var uiState: SplashUIState = .loading
        
        func onAppear() {
            // faz algo assincrono e muda o esatdo do uiState
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                // aqui e chamd o depois de 2 segundos
                self.uiState = .goToSignInScreen
            }
            
        }
        
        func SignInView() -> some View {
            return SplashViewRouter.makeSignInView()
        }
    }
    func signUpView() -> some View {
        return SignInViewRouter.makeSignUpView()
    }
    }

    
}
