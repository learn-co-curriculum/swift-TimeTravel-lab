//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentPlanetLabel: UILabel!
    
    var spaceShip = SpaceShip(name: "My spaceship", currentPlanet: Planet.venus)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func planetSpeed(_ sender: AnyObject) {
//        
//        switch sender.title! {
//            
//            case "Fast":
//                spaceShip.speed = .fast
//            
//        }
        
    }
    
    
    
    @IBAction func planetChosen(_ sender: AnyObject) {
        
        switch sender.title! {
            
            case "Venus":
                if spaceShip.travel(to: Planet.venus) == true {
                    currentPlanetLabel.text = "Venus"
                } else {
                    currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
            
        case "Earth":
            if spaceShip.travel(to: Planet.earth) == true {
                currentPlanetLabel.text = "Earth"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
            
        case "Mars":
            if spaceShip.travel(to: Planet.venus) == true {
                currentPlanetLabel.text = "Mars"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Jupiter":
            if spaceShip.travel(to: Planet.venus) == true {
                currentPlanetLabel.text = "Jupiter"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Saturn":
            if spaceShip.travel(to: Planet.venus) == true {
                currentPlanetLabel.text = "Saturn"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Uranus":
            if spaceShip.travel(to: Planet.venus) == true {
                currentPlanetLabel.text = "Uranus"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Neptune":
            if spaceShip.travel(to: Planet.venus) == true {
                currentPlanetLabel.text = "Neptune"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Mercury":
            if spaceShip.travel(to: Planet.venus) == true {
                currentPlanetLabel.text = "Mercury"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        default:
            currentPlanetLabel.text = "no planet chosen"
        }
        
    }
    
    
}
    
    
    
  

    


}

