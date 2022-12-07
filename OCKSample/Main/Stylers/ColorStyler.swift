//
//  ColorStyler.swift
//  OCKSample
//
//  Created by Corey Baker on 10/16/21.
//  Copyright © 2021 Network Reconnaissance Lab. All rights reserved.
//

import Foundation
import CareKitUI
import UIKit

struct ColorStyler: OCKColorStyler {

    var customBackground: UIColor { #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) }
    var secondaryCustomBackground: UIColor { #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) }

    var customGroupedBackground: UIColor { #colorLiteral(red: 0.8313068151, green: 0.6976719499, blue: 0.9890167117, alpha: 1) }
    var secondaryCustomGroupedBackground: UIColor { #colorLiteral(red: 1, green: 0.7050126195, blue: 0.8364293575, alpha: 1) }
    var tertiaryCustomGroupedBackground: UIColor { #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1) }

    #if os(iOS)
    var label: UIColor {
        FontColorKey.defaultValue
    }
    var tertiaryLabel: UIColor {
        TintColorKey.defaultValue
    }
    #endif
}
