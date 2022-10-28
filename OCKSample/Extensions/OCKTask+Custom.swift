//
//  OCKTask+Custom.swift
//  OCKSample
//
//  Created by  on 10/27/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import Foundation
import CareKitStore

extension OCKTask {
    var card: CardType {
        get {
            guard let cardInfo = userInfo?[Constants.card],
                  let cardType = CardType(rawValue: cardInfo) else {
                return .instruction
            }
            return cardType
        }
        set {
            userInfo?[Constants.card] = newValue.rawValue
        }
    }
}

extension OCKHealthKitTask {
    var card: CardType {
        get {
            guard let cardInfo = userInfo?[Constants.card],
                  let cardType = CardType(rawValue: cardInfo) else {
                return .instruction
            }
            return cardType
        }
        set {
            userInfo?[Constants.card] = newValue.rawValue
        }
    }
}
