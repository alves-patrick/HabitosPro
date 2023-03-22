//
//  SignUpInteractor.swift
//  HabitosPro
//
//  Created by Patrick Alves on 22/03/23.
//

import Foundation
import Combine
 
class SignUpInteractor {
    
    private let remote: SignUpRemoteDataSource = .shared
    // private let local: LocalDataSource
    
}

extension SignUpInteractor {
    
    func postUser(signUpRequest request: SignUpRequest) -> Future<Bool, AppError> {
        return remote.postUser(request: request)
}
}
