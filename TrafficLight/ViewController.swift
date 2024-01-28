//
//  ViewController.swift
//  TrafficLight
//
//  Created by Gennady on 28.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var lightButton: UIButton!
    
    let lightIsOff: CGFloat = 0.3
    let lightIsOn: CGFloat = 1
    
    var currentLight = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        redLight.layer.cornerRadius = 70
        yellowLight.layer.cornerRadius = 70
        greenLight.layer.cornerRadius = 70
        
        lightButton.layer.cornerRadius = 10
        
    }


    @IBAction func lightButtonDidTapped() {
        lightButton.setTitle(redLight.alpha == lightIsOff && yellowLight.alpha == lightIsOff && greenLight.alpha == lightIsOff ? "Start" : "Next", for: .normal)
        
        if currentLight == "" {
            redLight.alpha = lightIsOn
            currentLight = "Red"
        } else if currentLight == "Red" {
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = "Yellow"
        } else if currentLight == "Yellow" {
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = "Green"
        } else if currentLight == "Green" {
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = "Red"
        }
    }
}

