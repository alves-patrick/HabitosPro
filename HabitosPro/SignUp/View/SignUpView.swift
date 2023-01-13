//
//  SignUpView.swift
//  HabitosPro
//
//  Created by Patrick Alves on 11/01/23.
//

import SwiftUI

struct signUpView: View {
    
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    @State var document = ""
    @State var phone = ""
    @State var birthday = ""
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

extension signUpView {
    var numberField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}


extension signUpView {
var passwordField: some View {
SecureField("", text: $password)
    .border(Color.black)
}
}

extension signUpView {
var enterButton: some View {
    Button("Entrar")  {
        
    }
}
}
