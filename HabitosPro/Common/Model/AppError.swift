//
//  AppError.swift
//  HabitosPro
//
//  Created by Patrick Alves on 09/03/23.
//

import Foundation

enum AppError: Error {
    case response(message: String)
    
    public var message: String {
        switch self {
        case . response(let message):
            return message
        }
    }
}
