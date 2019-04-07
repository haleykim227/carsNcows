//
//  ViewController.swift
//  carsNcows
//
//  Created by Haley Kim on 4/6/19.
//  Copyright © 2019 Haley & Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickMaker: UIPickerView!
    let makers = ["ACURA", "ALFA ROMEO", "AUDI", "BENTLEY", "BUICK", "CADILLAC", "CHEVROLET", "CHRYSLER", "DODGE", "FIAT", "FORD", "GMC", "GENESIS", "HONDA", "INFINITI", "JAGUAR", "JEEP", "KIA", "LAND ROVER", "LEXUS", "LINCOLN", "LOTUS", "MASERATI", "MAZDA", "MERCEDES-BENZ", "MERCURY", "MINI", "MITSUBISHI", "NISSAN", "POLESTAR", "PONTIAC", "PORSCHE", "RAM", "ROLLS-ROYCE", "SAAB", "SATURN", "SCION", "SMART", "SUBARU", "SUZUKI", "TESLA", "TOYOTA", "VOLKSWAGEN", "VOLVO"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return makers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return makers[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Connect Data
        pickMaker.delegate = self
        pickMaker.dataSource = self
    }

}

