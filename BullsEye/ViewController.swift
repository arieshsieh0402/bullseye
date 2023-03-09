//
//  ViewController.swift
//  BullsEye
//
//  Created by Hsieh-Te Hsieh on 2023/2/19.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 1
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var startOverButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewGame()
    }
    
    @IBAction func showAlert () {
        
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        
        let title: String
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        score += points
        
        let message = "You scored \(points) points."
        
        let alert = UIAlertController(
            title: title, message: message, preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Awesome", style: .default, handler: {
                action in
                self.startNewRound()
            }
        )
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        
        let roundedValue = slider.value.rounded()
        print("The value of slider is now \(roundedValue)")
        currentValue = Int(roundedValue)
    }

    
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue =  50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels () {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    @IBAction func startNewGame () {
        score = 0
        round = 0
        startNewRound()
    }

}

