//
//  SignUpViewRouter.swift
//  HabitosPro
//
//  Created by Patrick Alves on 16/01/23.
//

import SwiftUI

enum SignUpViewRouter {
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
