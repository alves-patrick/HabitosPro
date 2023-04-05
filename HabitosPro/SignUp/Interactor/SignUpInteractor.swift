//
//  SignUpInteractor.swift
//  HabitosPro
//
//  Created by Patrick Alves on 22/03/23.
//

import Foundation
import Combine
 
class SignUpInteractor {
    
    private let remoteSignUp: SignUpRemoteDataSource = .shared
    private let remoteSignIn: SignInRemoteDataSource = .shared
    // private let local: LocalDataSource
    
}

extension SignUpInteractor {
    
    func postUser(signUpRequest request: SignUpRequest) -> Future<Bool, AppError> {
        return remoteSignUp.postUser(request: request)
}
    
func login(signInRequest request: SignInRequest) -> Future<SignInResponse, AppError> {
    return remoteSignIn.login(request: request)
   }
}
