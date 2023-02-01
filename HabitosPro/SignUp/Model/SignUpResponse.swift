//
//  SignUpResponse.swift
//  HabitosPro
//
//  Created by Patrick Alves on 01/02/23.
//

import Foundation

struct SignUpResponse: Decodable {
    
    let detail: String?

    
    enum CodingKeys: String, CodingKey {
      case detail
      
    }
  }

