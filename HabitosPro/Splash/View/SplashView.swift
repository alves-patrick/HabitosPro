//
//  SplashView.swift
//  HabitosPro
//
//  Created by Patrick Alves on 11/12/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var viewModel: SplashViewModel
    
    
    var body: some View {
        Group {
        
            switch viewModel.uiState {
            case .loading:
                loadingView()
                
                Text("Loading")
            case .goToSignInScreen:
                Text("Carregar Tela de Login")
            case .goTohomeScreen:
                Text("Carregar Tela principal")
            case .error(let msg):
                loadingView(error:msg)
            }
        }.onAppear(perform: {
            viewModel.onAppear()
            
        })
    }
}

// 1. Compartilhamento | Objetos
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

// 2. Variaveis em extensions
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

// 3. Funcoes em extensions
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
        
    }
}


