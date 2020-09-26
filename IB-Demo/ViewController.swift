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
        button.setTitle("Start spinning", for: .normal)
    }

    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderLabel.text = String(sender.value.rounded())
        if sender.value.rounded() == 70.0 {
            let alert = UIAlertController(title: "Important", message: "You are now in the slider's danger zone!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
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
            sender.setTitle("Start spinning", for: .normal)
        } else {
            spinner.startAnimating()
        
            sender.setTitle("Stop spinning", for: .normal)
        }
    }
    
    
    @IBAction func infoButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Today's info", message: "One sponsor of HSLU Informatik is Glencore, which causes worldwide environmental disasters and human rights violations.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "...really?", style: .default, handler: alertHandler ))
        self.present(alert, animated: true)
    }
    
    func alertHandler(alert: UIAlertAction!) {
        guard let url = URL(string: "https://konzern-initiative.ch/skandal/mine-vergiftet-kinder/") else { return }
        UIApplication.shared.open(url)
    }
}

