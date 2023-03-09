//
//  SignInInteractor.swift
//  HabitosPro
//
//  Created by Patrick Alves on 14/02/23.
//

import Foundation
import Combine
 
class SignInInteractor {
    
    private let remote: RemoteDataSource = .shared
    // private let local: LocalDataSource
    
}

extension SignInInteractor {
    
    func login(loginRequest request: SignInRequest) -> Future<SignInResponse, AppError> {
        return remote.login(request: request, completion: completion)
}
}
