//
//  SplashView.swift
//  HabitosPro
//
//  Created by Patrick Alves on 11/12/22.
//

import SwiftUI

struct SplashView: View {
  
  @ObservedObject var viewModel: SplashViewModel

  var body: some View {
    Group {
      switch viewModel.uiState {
        case .loading:
          loadingView()
        case .goToSignInScreen:
          // navegar para proxima tela
          viewModel.signInView()
          
        case .goToHomeScreen:
          Text("carregar Tela Principal")
        // navegar para proxima tela
        case .error(let msg):
          loadingView(error: msg)
      }
    }.onAppear(perform: viewModel.onAppear)
  }
  
}

// 1. Compartilhamento | objetos
struct LoadingView: View {
  var body: some View {
    ZStack {
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(Color.white)
        .ignoresSafeArea()
    }
  }
}

// 2. variaveis em extensions
extension SplashView {
  var loading: some View {
    ZStack {
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(Color.white)
        .ignoresSafeArea()
    }
  }
}

// 3. funções em extensions
extension SplashView {
  func loadingView(error: String? = nil) -> some View {
    ZStack {
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(Color.white)
        .ignoresSafeArea()
      
      if let error = error {
        Text("")
          .alert(isPresented: .constant(true)) {
            Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("Ok")) {
              // faz algo quando some o alerta
            })
          }
       }
    }
  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    let viewModel = SplashViewModel()
    SplashView(viewModel: viewModel)
//    SplashView(state: .loading)
  }
}


