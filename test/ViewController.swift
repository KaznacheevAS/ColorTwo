//
//  ViewController.swift
//  test
//
//  Created by Anton Kaznacheev on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet private weak var redNumberLabel: UILabel!
    @IBOutlet private weak var greenNumberLabel: UILabel!
    @IBOutlet private weak var blueNumberLabel: UILabel!
    
    @IBOutlet private weak var redSlider: UISlider!
    @IBOutlet private weak var greenSlider: UISlider!
    @IBOutlet private weak var blueSlider: UISlider!
    
    private var minNumber: CGFloat = 0
    private var maxNumber: CGFloat = 1
    
    private var valueNumber = 1
    
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        navigationItem.hidesBackButton = true
        
        backgroundView.layer.cornerRadius = 15
        
        redSlider.value = Float(valueNumber)
        greenSlider.value = Float(valueNumber)
        blueSlider.value = Float(valueNumber)
        
        redNumberLabel.text = String(format: "%.2f", redSlider.value)
        greenNumberLabel.text = String(format:"%.2f", greenSlider.value)
        blueNumberLabel.text = String(format:"%.2f", blueSlider.value)
        
        backgroundView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
    
    }

    @IBAction private func didSlidersBackground() {
        redNumberLabel.text = String(format: "%.2f", redSlider.value)
        greenNumberLabel.text = String(format: "%.2f", greenSlider.value)
        blueNumberLabel.text = String(format:"%.2f", blueSlider.value)
        
        backgroundView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func didDone() {
        dismiss(animated: true)
    }
    
    
    
    
}

