//
//  RemoteDataSource.swift
//  HabitosPro
//
//  Created by Patrick Alves on 28/02/23.
//

import Foundation

class RemoteDataSource {
    static var shared: RemoteDataSource = RemoteDataSource()
    
    private init(){
        
    }
    
    func login(request: SignInRequest, completion: (SignInResponse?, SignInErrorResponse?) -> Void) {
        
    }
}
