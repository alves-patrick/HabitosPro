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
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            let viewModel = SignInViewModel()
            SignInView(viewModel: viewModel)
            
        }
    }

