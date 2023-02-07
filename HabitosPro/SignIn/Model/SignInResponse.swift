//
//  SignInResponse.swift
//  HabitosPro
//
//  Created by Patrick Alves on 06/02/23.
//

import Foundation

struct SignInResponse: Decodable {
    
    let accessToken: String
    let refreshToken: String
    let expires: Int
    let tokenType: String
    
    enum CodingKeys: String, CodingKey {
      case accessToken = "access_token"
      case refreshToken = "refresh_token"
      case expires
      case tokenType = "token_type"
    }
  }

