//
//  WebService.swift
//  HabitosPro
//
//  Created by Patrick Alves on 26/01/23.
//

import Foundation

enum WebService {
    
    enum Endpoint: String {
        case base = "https://habitplus-api.thiagoaguiar.co"
        case postUser = "/users"
    }
        enum NetworkError {
            case badRequest
            case notFound
            case unauthorized
            case internalServerError
        }
    enum Ressult {
        case sucess(Data)
        case failure(NetworkError, Data?)
    }
    
    private static func completeUrl(path: Endpoint) -> URLRequest? {
        guard let url = URL(string: "\(Endpoint.base.rawValue)\(path.rawValue)") else { return nil }
        return URLRequest(url: url)
    }
    
    private static func call<T: Encodable>(path: Endpoint,
                                           body: T,
                                           callback: (Result) -> Void) {
        
        guard var urlRequest = completeUrl(path: path) else { return }
        
        guard let jsonData = try? JSONEncoder().encode(body) else { return }
        
        
        
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "accept")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                print(error)
                callback(.failure(.internalServerError, nil))
                return
            }
            print(String(data: data, encoding: .utf8))
            print("response\n")
            print(response)
            if let r = response as? HTTPURLResponse {
                print(r.statusCode)
            }
        }
        task.resume()
        
    }
        
        static func postUser(request: SignUpRequest) {
            call(path: .postUser, body: request) { result in
                
            }
        }
    }
    

