//
//  UIApplication.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/23/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
