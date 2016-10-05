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
    
    // Need a current planet of "none"
    var spaceShip = SpaceShip(name: "My spaceship", currentPlanet: Planet.none)
    
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //
    //
    //    }
    
    @IBAction func onSpeedButtonTapped(_ sender: UIButton) {
        title = sender.title(for: sender.state)
        
        switch title! {
            
        case "Fast":
            spaceShip.speed = .fast
            break
        case "Slow":
            spaceShip.speed = .slow
            break
        case "Medium":
            spaceShip.speed = .medium
            break
        default:
            NSLog("Unknown button pressed!")
            break
        }
        
    }
    
    
    
    @IBAction func planetChosen(_ sender: UIButton) {
        title = sender.title(for: sender.state)
        
        switch title! {
            
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
            if spaceShip.travel(to: Planet.mars) == true {
                currentPlanetLabel.text = "Mars"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Jupiter":
            if spaceShip.travel(to: Planet.jupiter) == true {
                currentPlanetLabel.text = "Jupiter"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Saturn":
            if spaceShip.travel(to: Planet.saturn) == true {
                currentPlanetLabel.text = "Saturn"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Uranus":
            if spaceShip.travel(to: Planet.uranus) == true {
                currentPlanetLabel.text = "Uranus"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Neptune":
            if spaceShip.travel(to: Planet.neptune) == true {
                currentPlanetLabel.text = "Neptune"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        case "Mercury":
            if spaceShip.travel(to: Planet.mercury) == true {
                currentPlanetLabel.text = "Mercury"
            } else {
                currentPlanetLabel.text = "\(spaceShip.currentPlanet)"
            }
        default:
            currentPlanetLabel.text = "no planet chosen"
        }
        
    }
    
    
}
