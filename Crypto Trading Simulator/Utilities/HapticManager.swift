//
//  HapticManager.swift
//  Crypto Trading Simulator
//
//  Created by Naing Oo Lwin on 4/23/24.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
