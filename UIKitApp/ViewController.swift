//
//  ViewController.swift
//  UIKitApp
//
//  Created by Yury on 06.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var button: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switcher: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: segmentControl
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: mainLabel
        mainLabel.font = mainLabel.font.withSize(25)
        mainLabel.numberOfLines = 2
        mainLabel.text = ""
        mainLabel.textAlignment = .center
        
        // MARK: slider
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .blue
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .yellow
        
        // MARK: textField
        textField.placeholder = "Enter any text"
        
        // MARK: button
        button.layer.cornerRadius = 10
        
    }
    
    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Choosen first segment"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Choosen second segment"
            mainLabel.textColor = .magenta
        case 2:
            mainLabel.text = "Choosen third segment"
            mainLabel.textColor = .blue
        default:
            break
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        mainLabel.text = String(Int(slider.value))
    }
    
    @IBAction func buttonAction() {
        mainLabel.text = textField.text
    }
    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        mainLabel.text = sender.date.formatted(date: .complete, time: .standard)
    }
    
    
    @IBAction func switchAction() {
        slider.isHidden = !switcher.isOn
        if switcher.isOn { mainLabel.text = "Is On" }
        else if !switcher.isOn { mainLabel.text = "Is Off" }
        textField.isHidden = !switcher.isOn
        segmentedControl.isHidden = !switcher.isOn
        button.isHidden = !switcher.isOn
        datePicker.isHidden = !switcher.isOn
    }
    
    
}

