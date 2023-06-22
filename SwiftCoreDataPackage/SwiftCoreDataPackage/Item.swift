//
//  Item.swift
//  SwiftCoreDataPackage
//
//  Created by donghyeon choi on 6/22/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
