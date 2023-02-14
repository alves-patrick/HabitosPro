//
//  SplashViewRouter.swift
//  HabitosPro
//
//  Created by Patrick Alves on 05/01/23.
//

import SwiftUI

enum SplashViewRouter {
  
  static func makeSignInView() -> some View {
    let viewModel = SignInViewModel(interactor: SignInInteractor())
    return SignInView(viewModel: viewModel)
  }
  
}
