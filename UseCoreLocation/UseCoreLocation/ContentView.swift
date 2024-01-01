//
//  ContentView.swift
//  UseCoreLocation
//
//  Created by donghyeon choi on 2023/06/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SearchView()
                .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
