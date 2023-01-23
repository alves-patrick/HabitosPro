//
//  EditTextView.swift
//  HabitosPro
//
//  Created by Patrick Alves on 19/01/23.
//

import SwiftUI

struct EditTextView: View {
    
    @Binding var text: String
    
    var placeholder: String = ""
    
    
    
    var body: some View {
        TextField(placeholder, text: $text)
    }
}
struct EditTextView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            VStack {
                EditTextView(text: .constant("Texto"),
            placeholder: "e-mail")
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .previewDevice("iPhone 14 Pro Max")
                .preferredColorScheme($0)
        }
    }
}
