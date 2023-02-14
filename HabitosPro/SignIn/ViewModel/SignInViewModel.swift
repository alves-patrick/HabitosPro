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
    private let interactor: SignInInteractor
  
  @Published var uiState: SignInUIState = .none
  
    init(interactor: SignInInteractor) {
        self.interactor = interactor
    cancellable = publisher.sink { value in
      print("usuário criado! goToHome: \(value)")
      
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
    
     interactor.login(request: SignInRequest(email: email,
                                            password: password)) { (successResponse, errorResponse) in
      
      if let error = errorResponse {
        DispatchQueue.main.async {
          // Main Thread
          self.uiState = .error(error.detail.message)
        }
      }
      
      if let success = successResponse {
        DispatchQueue.main.async {
          print(success)
          self.uiState = .goToHomeScreen
        }
      }
      
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
