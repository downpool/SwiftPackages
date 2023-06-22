//
//  SwiftCoreDataPackageApp.swift
//  SwiftCoreDataPackage
//
//  Created by donghyeon choi on 6/22/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftCoreDataPackageApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
