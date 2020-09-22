//
//  ViewController.swift
//  IB-Demo
//
//  Created by Simon Müller on 22.09.20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderLabel.text = String(sender.value)
    }
    
}

