//
//  Locationmanagerdidchangeauthorization.swift
//  UseCoreLocation
//
//  Created by donghyeon choi on 2023/06/05.
//

import Foundation
import CoreLocation

func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
       switch manager.authorizationStatus {
       case .authorizedWhenInUse:  // Location services are available.
           // Insert code here of what should happen when Location services are authorized
           authorizationStatus = .authorizedWhenInUse
           locationManager.requestLocation()
           break
           
       case .restricted:  // Location services currently unavailable.
           // Insert code here of what should happen when Location services are NOT authorized
           authorizationStatus = .restricted
           break
           
       case .denied:  // Location services currently unavailable.
           // Insert code here of what should happen when Location services are NOT authorized
           authorizationStatus = .denied
           break
           
       case .notDetermined:        // Authorization not determined yet.
           authorizationStatus = .notDetermined
           manager.requestWhenInUseAuthorization()
           break
           
       default:
           break
       }
   }
