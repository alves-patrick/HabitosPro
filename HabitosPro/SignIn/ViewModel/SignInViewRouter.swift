//
//  SignInViewRouter.swift
//  HabitosPro
//
//  Created by Patrick Alves on 13/01/23.
//

import SwiftUI

enum SignInViewRouter {
  
  static func makeHomeView() -> some View {
    let viewModel = HomeViewModel()
    return HomeView(viewModel: viewModel)
  }
  
  static func makeSignUpView() -> some View {
    return SignUpView()
  }
  
}
