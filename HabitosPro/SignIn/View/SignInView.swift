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
            
            TextField("", text: $email)
                .border(Color.black)
        }
    }
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            let viewModel = SignInViewModel()
            SignInView(viewModel: viewModel)
            
        }
    }
}
