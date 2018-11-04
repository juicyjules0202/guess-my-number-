//
//  ViewController.swift
//  guess my number!
//
//  Created by dogeFatBoii on 29/10/2018.
//  Copyright © 2018 dogeFatBoii. All rights reserved.
//

import UIKit
    //variables and shitee
    var minimumGuess = 1
    var maximumGuess = 100
class ViewController: UIViewController {
    //defining UI
    
    @IBOutlet weak var lblMain: UILabel!
    @IBOutlet weak var lblMin: UILabel!
    @IBOutlet weak var lblMax: UILabel!
    @IBOutlet weak var lblGuess: UILabel!
    @IBOutlet weak var btnConfirmation: UIButton!
    @IBOutlet weak var sliderForNumber: UISlider!
    @IBOutlet weak var asdf: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderForNumber.minimumValue = Float(Int(minimumGuess))
        sliderForNumber.maximumValue = Float(Int(maximumGuess))
        lblMain.text = "Guess the number!"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ValueChangeTest(_ sender: Any) {
        
    }
    

}

