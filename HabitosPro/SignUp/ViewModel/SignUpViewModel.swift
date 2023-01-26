//
//  SignUpViewModel.swift
//  HabitosPro
//
//  Created by Patrick Alves on 16/01/23.
//

import SwiftUI
import Combine

class SignUpViewModel: ObservableObject {
    
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var document = ""
    @Published var phone = ""
    @Published var birthday = ""
    @Published var gender = Gender.male
    
    var publisher: PassthroughSubject<Bool, Never>!
    
    @Published var uiState: SignUpUIState = .none
    
    func SignUp() {
        self.uiState = .loading
        
        WebService.postUser(fullName: fullName,
                            email: email,
                            password: password,
                            document: document,
                            phone: phone,
                            birthday: birthday,
                            gender: gender.index)
        
    //    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
     //       self.uiState = .error("Usuario ja existente")
      //   self.uiState = .success
      //   self.publisher.send(true)
        }
        
        
    }
    

extension SignUpViewModel {
  func homeView() -> some View {
      return SignInViewRouter.makeHomeView()

  }
}
