//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Ruslan Abbasov on 10/8/19.
//  Copyright © 2019 Ruslan Abbasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderValueChanged(_ sender: UISlider!) {
        let celsiusTemperature = Int(round(sender.value))
        celsiusLabel.text = "\(celsiusTemperature)°C"
        
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)°F"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

