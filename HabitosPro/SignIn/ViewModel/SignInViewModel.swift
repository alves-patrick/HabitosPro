//
//  SignInViewModel.swift
//  HabitosPro
//
//  Created by Patrick Alves on 05/01/23.
//

import SwiftUI
import Combine

class SignInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    private var cancellable: AnyCancellable?
    
    private let publisher = PassthroughSubject<Bool, Never>()
  
  @Published var uiState: SignInUIState = .none
    
    init() {
        cancellable = publisher.sink {value in
            print("Usuario Criado! goToHome: \(value)")
            
            if value {
                self.uiState = .goToHomeScreen
            }
        }
    }
    
    
    deinit {
        cancellable?.cancel()
    }
  
  func login() {
    self.uiState = .loading
    
      WebService.login(request: SignInRequest(email: email,
                                             password: password)) {(sucessResponse, errorResponse) in
      }
  }
  
}

extension SignInViewModel {
  func homeView() -> some View {
    return SignInViewRouter.makeHomeView()
  }
  func signUpView() -> some View {
    return SignInViewRouter.makeSignUpView(publisher: publisher)
  }
}
