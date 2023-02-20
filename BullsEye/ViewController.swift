//
//  ViewController.swift
//  BullsEye
//
//  Created by Hsieh-Te Hsieh on 2023/2/19.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert () {
        
        let message = "The value of slider is now \(currentValue)"
        
        let alert = UIAlertController(
            title: "Hello World!", message: message, preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Awesome", style: .default, handler: nil
        )
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        
        let roundedValue = slider.value.rounded()
        print("The value of slider is now \(roundedValue)")
        currentValue = Int(roundedValue)
    }


}

