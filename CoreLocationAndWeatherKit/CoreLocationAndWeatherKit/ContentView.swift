//
//  ContentView.swift
//  CoreLocationAndWeatherKit
//
//  Created by donghyeon choi on 7/10/23.
//

import CoreLocation
import SwiftUI
import WeatherKit

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Now Weather")
            Text("\(weatherData())")
        }
    }
}
