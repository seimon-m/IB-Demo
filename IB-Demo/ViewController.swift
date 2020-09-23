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
        slider.setValue(50.0, animated: false)
        sliderLabel.text = String(50.0)
    }

    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderLabel.text = String(sender.value.rounded())
    }
    
    @IBAction func colorButtonValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = .cyan
        } else {
            self.view.backgroundColor = .white
        }
    }
    
    @IBAction func spinButtonPressed(_ sender: UIButton) {
        if spinner.isAnimating {
            spinner.stopAnimating()
//            sender.setTitle("Stop spinning", for: .normal)
        } else {
            spinner.startAnimating()
//            sender.setTitle("Start spinning", for: .normal)
        }
    }
    
    
//    @IBAction func infoButtonPressed(_ sender: UIButton) {
//        let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
//        NSLog("The \"OK\" alert occured.")
//        }))
//    }
}

