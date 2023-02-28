//
//  SignInInteractor.swift
//  HabitosPro
//
//  Created by Patrick Alves on 14/02/23.
//

import Foundation
 
class SignInInteractor {
    
    private let remote: RemoteDataSource = .shared
    // private let local: LocalDataSource
    
}

extension SignInInteractor {
    
    func login(loginRequest request: SignInRequest, completion:  (SignInResponse?, SignInErrorResponse?) -> Void) {
        remote.login(request: request, completion: completion)
}
}
