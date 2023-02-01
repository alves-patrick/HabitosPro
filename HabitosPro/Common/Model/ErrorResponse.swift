//
//  ErrorResponse.swift
//  HabitosPro
//
//  Created by Patrick Alves on 01/02/23.
//

import Foundation

struct ErrorResponse: Decodable {
    
    let detail: String

    
    enum CodingKeys: String, CodingKey {
      case detail
      
    }
  }

