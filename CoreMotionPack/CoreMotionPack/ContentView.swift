//
//  ContentView.swift
//  CoreMotionPack
//
//  Created by donghyeon choi on 6/17/23.
//

import SwiftUI
import CoreMotion

struct ContentView: View {
    
    var coreMotions = CMMotionManager()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    
    }
}

#Preview {
    ContentView()
}
