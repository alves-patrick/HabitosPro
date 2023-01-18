//
//  SignUpViewRouter.swift
//  HabitosPro
//
//  Created by Patrick Alves on 16/01/23.
//

import SwiftUI
import Combine

enum SignUpViewRouter {
    
    static func makeHomeView(publisher: PassthroughSubject<Bool, Never>) -> some View {
        let viewModel = HomeViewModel()
        
        return HomeView(viewModel: viewModel)
    }
}
