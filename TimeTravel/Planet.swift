//
//  Planet.swift
//  TimeTravel
//
//  Created by Victoria Melendez on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Planet : Int {
    
    case none = 1
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune

    
    var hasLife : Bool {
        
        switch self {
            
        case .earth, .mars:
            return true
            
        default:
            return false
        }
    }
 
    
    var weather: Weather {
        
        switch self {
            
        case .earth:
            return .warm
            
        default:
            return .cold
        }
    }

    
    
}
