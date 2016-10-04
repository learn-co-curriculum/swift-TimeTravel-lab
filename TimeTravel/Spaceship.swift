//
//  Spaceship.swift
//  TimeTravel
//
//  Created by Benjamin Su on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Spaceship {
    var name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    var description: String {
        return "Insert cool description here"
    }
    
    init(name: String = "", planet: Planet = .earth) {
        self.name = name
        self.currentPlanet = planet
    }
    
    func timeTravel() -> Bool {
        return speed.isLightSpeeding
    }
    
    func isFaster(than spaceship: Spaceship) -> Bool {
        return self.speed.isFaster(than: spaceship.speed)
    }
    
    func travel(to planet: Planet) -> Bool {
        switch speed {
        case .slow:
            if planet == Planet.jupiter || planet == Planet.uranus {
                currentPlanet = planet
                return true
            } else {
                currentPlanet = Planet.jupiter
                return false
            }
        case .medium:
            if planet == Planet.saturn{
                currentPlanet = planet
                return true
            } else {
                currentPlanet = Planet.saturn
                return false
            }
        case .fast:
            if planet == Planet.venus || planet == Planet.earth || planet == Planet.neptune {
                currentPlanet = planet
                return true
            } else {
                currentPlanet = Planet.earth
                return false
            }
        case .lightSpeed:
            if planet == Planet.mars {
                currentPlanet = planet
                return true
            } else {
                currentPlanet = Planet.mars
                return false
            }
        default:
            return false
        }
    }
}





















