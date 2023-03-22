//
//  SignUpRemoteDataSource.swift
//  HabitosPro
//
//  Created by Patrick Alves on 22/03/23.
//

import Foundation
import Combine

class SignUpRemoteDataSource {
    
    static var shared: SignUpRemoteDataSource = SignUpRemoteDataSource()
    
    private init() {
    }
    
    func postUser(request: SignUpRequest) -> Future<Bool, AppError> {
        return Future { promise in
            
            WebService.call(path: .postUser, body: request) { result in
                switch result {
                case .failure(let error, let data):
                    if let data = data {
                        if error == .badRequest {
                            let decoder = JSONDecoder()
                            let response = try? decoder.decode(ErrorResponse.self, from: data)
                            promise(.failure(AppError.response(message: response?.detail ?? "Erro interno no servidor")))
                            // completion(nil, response)
                        }
                    }
                    break
                case .success(_):
                    promise(.success(true))
                    //completion(true, nil)
                    break
                }
            }
        }
    }
}
