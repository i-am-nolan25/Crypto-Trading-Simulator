//
//  XMarkButton.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/23/24.
//

import SwiftUI

struct XMarkButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.system(size: 17, weight: .bold, design: .rounded))
        })
    }
}

#Preview {
    XMarkButton()
}
