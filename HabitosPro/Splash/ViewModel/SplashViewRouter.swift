//
//  SplashViewRouter.swift
//  HabitosPro
//
//  Created by Patrick Alves on 05/01/23.
//

import SwiftUI

enum SplashViewRouter {
    
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
    
    static func makesignUpView() -> some View {
        return signUpView()
    }
}
