//
//  WeatherSet.swift
//  CoreLocationAndWeatherKit
//
//  Created by donghyeon choi on 7/11/23.
//

import CoreLocation
import Foundation
import SwiftUI
import WeatherKit

func weatherData() async -> String {
    
    @StateObject var locationDataManager = LocationDataManager()
    
    let weatherService = WeatherService()
    
    var centerLatitude: String?
    var centerLongitude: String?
    
    switch locationDataManager.locationManager.authorizationStatus {
    case .authorizedWhenInUse:  // Location services are available.
        // Insert code here of what should happen when Location services are authorized
        centerLatitude = locationDataManager.locationManager.location?.coordinate.latitude.description ?? "Error loading"
        
        centerLongitude = locationDataManager.locationManager.location?.coordinate.longitude.description ?? "Error loading"
        
    case .restricted, .denied, .notDetermined:        // Authorization not determined yet.
        return ""
    default:
        return ""
    }
    
    let centerLocations = CLLocation(latitude: Double(centerLatitude ?? "43")!, longitude: Double(centerLongitude ?? "121")!)
    
    let centerWeather = try! await weatherService.weather(for: centerLocations)
    
    let temperature = centerWeather.currentWeather.temperature.description
    
    return temperature
}
