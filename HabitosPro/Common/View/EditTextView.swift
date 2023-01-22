//
//  EditTextView.swift
//  HabitosPro
//
//  Created by Patrick Alves on 19/01/23.
//

import SwiftUI

struct EditTextView: View {
    var body: some View {
        Text("Ola Mundo")
    }
}
struct EditTextView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            VStack {
                EditTextView()
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .previewDevice("iPhone 14 Pro Max")
                .preferredColorScheme($0)
        }
    }
}
