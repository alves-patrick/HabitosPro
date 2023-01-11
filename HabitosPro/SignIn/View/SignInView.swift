//
//  SignInView.swift
//  HabitosPro
//
//  Created by Patrick Alves on 05/01/23.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    @State var email = ""
    @State var password = ""
    @State var action: Int? = 0
    
    
    var body: some View {
        VStack(alignment: .center) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 48)
            
            Text("Login")
                .foregroundColor(.orange)
                .font(Font.system(.title).bold())
                .padding(.bottom, 8)
            
            numberField
            
            passwordField
        
            enterButton
            
            registerLink
        }
            
        }
    }
    
    extension SignInView {
        var numberField: some View {
            TextField("", text: $email)
                .border(Color.black)
        }
    }


extension SignInView {
var passwordField: some View {
    SecureField("", text: $password)
        .border(Color.black)
  }
}

extension SignInView {
    var enterButton: some View {
        Button("Entrar")  {
            
        }
    }
}

extension SignInView {
    var registerLink: some View {
        VStack{
            Text("Ainda nao possui cadastro ativo?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            ZStack {
                NavigationLink(
                    destination: Text("Tela de cadastro"),
                    tag: 1,
                    selection: $action,
                    label: { EmptyView() })
                
                Button("Realize seu cadastro") {
                    self.action = 1
                }
            }
        }
    }
}
    
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            let viewModel = SignInViewModel()
            SignInView(viewModel: viewModel)
            
        }
    }
    

