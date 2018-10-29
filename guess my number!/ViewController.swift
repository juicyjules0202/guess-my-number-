//
//  ViewController.swift
//  guess my number!
//
//  Created by dogeFatBoii on 29/10/2018.
//  Copyright © 2018 dogeFatBoii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //defining UI
    
    @IBOutlet weak var lblMain: UILabel!
    @IBOutlet weak var lblMin: UILabel!
    @IBOutlet weak var lblMax: UILabel!
    @IBOutlet weak var btnConfirmation: UIButton!
    @IBOutlet weak var sliderForNumber: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

