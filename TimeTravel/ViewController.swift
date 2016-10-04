//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var currentPlanet: UILabel!
    @IBOutlet weak var flightStatus: UILabel!
    
    
    var enterprise = Spaceship(name: "Enterprise", planet: .earth)
    var travelToPlanet: Planet = .earth
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func setSpeed(_ sender: UIButton) {
        
        if let title = sender.titleLabel?.text {
            switch title {
            case "Slow":
                enterprise.speed = .slow
//                sender.backgroundColor = UIColor.green
            case "Medium":
                enterprise.speed = .medium
//                sender.backgroundColor = UIColor.green
            case "Fast":
                enterprise.speed = .fast
//                sender.backgroundColor = UIColor.green
            case "Lightspeed":
                enterprise.speed = .lightSpeed
//                sender.backgroundColor = UIColor.green
            default:
                enterprise.speed = .none
            }
            
        }
        
        
        
    }
    
    
    @IBAction func setCourse(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            switch title {
            case "Mercury":
                travelToPlanet = .mercury
            case "Venus":
                travelToPlanet = .venus
            case "Earth":
                travelToPlanet = .earth
            case "Mars":
               travelToPlanet = .mars
            case "Jupiter":
               travelToPlanet = .jupiter
            case "Saturn":
               travelToPlanet = .saturn
            case "Uranus":
                travelToPlanet = .uranus
            case "Neptune":
               travelToPlanet = .neptune
            default:
                travelToPlanet = enterprise.currentPlanet
            }
        }
    }
    
    
    @IBAction func launch(_ sender: UIButton) {
        if enterprise.travel(to: travelToPlanet) {
            flightStatus.text = "Look everybody! We made It"
        } else {
            flightStatus.text = "Looks like.. we got somewhere."
        }
        currentPlanet.text = "\(enterprise.currentPlanet)".capitalized
    }
    


}

