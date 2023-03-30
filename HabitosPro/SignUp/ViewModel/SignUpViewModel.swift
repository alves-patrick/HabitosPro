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
    
    
    private let interactor: SignUpInteractor
    
   init(interactor: SignUpInteractor) {
        
        self.interactor = interactor
    }
    
    
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
        
             let signUpRequest = SignUpRequest(fullName: fullName,
                                               email: email,
                                               password: password, document: document,
                                               phone: phone,
                                               birthday: birthday,
                                               gender: gender.index)
        
        interactor.postUser(signUpRequest: signUpRequest)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch(completion) {
                case .failure(let appError):
                    self.uiState = .error(appError.message)
                    break
                case .finished:
                    break
                }
                
            } receiveValue: { created in
                if (created) {
                    print(created)
                    self.publisher.send(created)
                    self.uiState = .success
        
    //    interactor.postUser(signUpRequest: signUpRequest) { (sucessResponse, errorResponse) in
      //      if let error = errorResponse {
       //     DispatchQueue.main.async {
       //           self.uiState = .error(error.detail)
       //   }
            
        //    if let sucess = sucessResponse {
                
     //       WebService.login(request: SignInRequest(email: self.email,
          //                                           password: self.password)) { (successResponse, errorResponse) in
                  
         //   if let errorSignIn = errorResponse {
          //       DispatchQueue.main.async {
          //         // Main Thread
         //           self.uiState = .error(errorSignIn.detail.message)
         //        }
         //  }
                  
        //      if let successSignIn = successResponse {
        //          DispatchQueue.main.async {
        //         print(successSignIn)
        //         self.publisher.send(sucess)
       //                 self.uiState = .success
         //      }
       //      }
       //
        //   }
       //    DispatchQueue.main.async {
       //
       //         }
                }
            }
        }

        }
        
    

extension SignUpViewModel {
  func homeView() -> some View {
      return SignInViewRouter.makeHomeView()

  }
}
