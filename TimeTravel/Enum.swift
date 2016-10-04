//
//  Speed.swift
//  TimeTravel
//
//  Created by Benjamin Su on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    case none = 0
    case slow = 50
    case medium = 150
    case fast = 1000
    case lightSpeed = 1000000
    
    var isLightSpeeding: Bool {
        return self == .lightSpeed
    }
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0...49 :
            self = .none
        case 50...149 :
            self = .slow
        case 150...999:
            self = .medium
        case 1000...999999:
            self = .fast
        default :
            self = .lightSpeed
        }
    }
    
    func isFaster(than speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue
    }
    
}

enum Weather {
    case cold
    case warm
    case hot
    case superDuperHot
}

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    
    var hasLife: Bool {
        if self == .earth || self == .mars {
            return true
        } else {
            return false
        }
    }
    
    var weather: Weather {
        switch self {
        case .mercury:
            return .superDuperHot
        case .venus:
            return .superDuperHot
        case .earth:
            return .warm
        case .mars:
            return .cold
        case .jupiter:
            return .warm
        case .saturn:
            return .cold
        case .uranus:
            return .cold
        case .neptune:
            return .cold
        }
    }
    
}


















































