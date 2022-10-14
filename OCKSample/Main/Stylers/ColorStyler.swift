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
    
    var customBackground: UIColor { #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) }
    var secondaryCustomBackground: UIColor { #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) }

    var customGroupedBackground: UIColor { #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1) }
    var secondaryCustomGroupedBackground: UIColor { #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) }
    var tertiaryCustomGroupedBackground: UIColor { #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1) }
    
    #if os(iOS)
    var label: UIColor {
        FontColorKey.defaultValue
    }
    var tertiaryLabel: UIColor {
        TintColorKey.defaultValue
    }
    #endif
}
