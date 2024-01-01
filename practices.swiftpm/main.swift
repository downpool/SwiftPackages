//
//  main.swift
//  practices
//
//  Created by donghyeon choi on 12/18/23.
//

import Foundation


let array: [Int] = [1, 2, 3, 4, 2, 3, 1, 5, 4, 12, 10, 8]

for ints in array {
    print("\(ints)")
}

array.forEach {
    print($0)
}
