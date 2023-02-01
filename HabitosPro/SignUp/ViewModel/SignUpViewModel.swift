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
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "dd/MM/yyy"
        
        let dateFormatted = formatter.date(from: birthday)
        
        guard let dateFormatted = dateFormatted else {
            self.uiState = .error("Data Invalida \(birthday)")
            return
        }
        
        formatter.dateFormat = "yyyy-MM-dd"
        
        let birthday = formatter.string(from: dateFormatted)
        
        WebService.postUser(request: SignUpRequest(fullName: fullName,
                                                   email: email,
                                                   password: password, document: document,
                                                   phone: phone,
                                                   birthday: birthday,
                                                   gender: gender.index)) {(sucessResponse, errorResponse) in
            if let error = errorResponse {
                self.uiState = .error(error.detail)
            }
            
            
        }
        
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
