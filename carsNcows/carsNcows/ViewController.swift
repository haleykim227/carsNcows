//
//  ViewController.swift
//  carsNcows
//
//  Created by Haley Kim on 4/6/19.
//  Copyright © 2019 Haley & Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var cowculateButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var pickMaker: UIPickerView!
    
    let makers = ["", "ACURA", "ALFA ROMEO", "AUDI", "BENTLEY", "BUICK", "CADILLAC", "CHEVROLET", "CHRYSLER", "DODGE", "FIAT", "FORD", "GMC", "GENESIS", "HONDA", "INFINITI", "JAGUAR", "JEEP", "KIA", "LAND ROVER", "LEXUS", "LINCOLN", "LOTUS", "MASERATI", "MAZDA", "MERCEDES-BENZ", "MERCURY", "MINI", "MITSUBISHI", "NISSAN", "POLESTAR", "PONTIAC", "PORSCHE", "RAM", "ROLLS-ROYCE", "SAAB", "SATURN", "SCION", "SMART", "SUBARU", "SUZUKI", "TESLA", "TOYOTA", "VOLKSWAGEN", "VOLVO"]
    
    var valueSelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Connect Data
        pickMaker.delegate = self
        pickMaker.dataSource = self
        
        // Rounding Cow-culate button
        cowculateButton.layer.cornerRadius = 7
        
        // Rounding help Button
        helpButton.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "cowculateSegue"){
            let vc = segue.destination as! cowculateViewController
            vc.selected = valueSelected
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return makers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return makers[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        valueSelected = makers[row]
    }
    
}

