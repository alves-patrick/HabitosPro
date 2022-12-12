//
//  SplashView.swift
//  HabitosPro
//
//  Created by Patrick Alves on 11/12/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .goToSignInScreen
    
    var body: some View {
        
        switch state {
        case .loading:
            loadingView()
    
            Text("Loading")
        case .goToSignInScreen:
            Text("Carregar Tela de Login")
        case .goTohomeScreen:
            Text("Carregar Tela principal")
        case .error(let msg):
            Text("Mostrar erro: \(msg)")
        }
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
    func loadingView() -> some View {
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
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .loading)
        
    }
}


