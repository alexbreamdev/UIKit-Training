//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Oleksii Leshchenko on 12.09.2022.
//

import Foundation
import SwiftUI

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}


