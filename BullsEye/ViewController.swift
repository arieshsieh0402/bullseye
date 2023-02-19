//
//  ViewController.swift
//  BullsEye
//
//  Created by Hsieh-Te Hsieh on 2023/2/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert () {
        let alert = UIAlertController(
            title: "Hello World!", message: "Hi", preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Awesome", style: .default, handler: nil
        )
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }


}

