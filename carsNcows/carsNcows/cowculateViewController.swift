//
//  cowculateViewController.swift
//  carsNcows
//
//  Created by Haley Kim on 4/6/19.
//  Copyright © 2019 Haley & Emily. All rights reserved.
//

import UIKit

class cowculateViewController: UIViewController {

    var selected: String!
    var CO2emissions: Double!
    var gasMileage: Double!
    var cows: Double!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var emissionNumber: UILabel!
    @IBOutlet weak var cowNumber: UILabel!
    @IBOutlet weak var imageLeft: UIImageView!
    @IBOutlet weak var imageRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch selected {
        case "ACURA":
            CO2emissions = 145.932
            gasMileage = 25
        case "ALFA ROMEO":
            CO2emissions = 115.961
            gasMileage = 26
        case "AUDI":
            CO2emissions = 124.968
            gasMileage = 26
        case "BENTLEY":
            CO2emissions = 118.551
            gasMileage = 13
        case "PORSCHE":
            CO2emissions = 118.551
            gasMileage = 22
        case "VOLKSWAGEN":
            CO2emissions = 118.551
            gasMileage = 28
        case "BMW",
             "MINI":
            CO2emissions = 129.25
            gasMileage = 25
        case "ROLLS-ROYCE":
            CO2emissions = 129.25
            gasMileage = 14
        case "BUICK":
            CO2emissions = 124.19
            gasMileage = 25
        case "CADILLAC",
             "CHEVROLET",
             "PONTIAC",
             "GMC",
             "SATURN":
            CO2emissions = 124.19
            gasMileage = 21
        case "DODGE",
             "RAM":
            CO2emissions = 115.961
            gasMileage = 19
        case "FIAT":
            CO2emissions = 115.961
            gasMileage = 27
        case "FORD":
            CO2emissions = 118.435
            gasMileage = 23
        case "LINCOLN",
             "MERCURY":
            CO2emissions = 118.435
            gasMileage = 19
        case "GENESIS":
            CO2emissions = 121.01
            gasMileage = 20
        case "KIA",
             "HYUNDAI":
            CO2emissions = 121.01
            gasMileage = 27
        case "HONDA":
            CO2emissions = 133.387
            gasMileage = 30
        case "INFINITI":
            CO2emissions = 116.666
            gasMileage = 23
        case "LAND ROVER",
             "JAGUAR":
            CO2emissions = 149.841
            gasMileage = 21
        case "CHRYSLER",
             "JEEP":
            CO2emissions = 146.673
            gasMileage = 22
        case "MASERATI":
            CO2emissions = 146.673
            gasMileage = 18
        case "TOYOTA",
             "SCION":
            CO2emissions = 105.447
            gasMileage = 32
        case "LEXUS",
             "SUBARU":
            CO2emissions = 105.447
            gasMileage = 26
        case "MAZDA":
            CO2emissions = 126.74
            gasMileage = 30
        case "MERCEDES-BENZ":
            CO2emissions = 125.012
            gasMileage = 20
        case "MITSUBISHI",
             "NISSAN":
            CO2emissions = 132.13
            gasMileage = 27
        case "SUZUKI":
            CO2emissions = 120.61
            gasMileage = 21
        case "LOTUS",
             "POLESTAR",
             "VOLVO":
            CO2emissions = 121.166
            gasMileage = 26
        case "TESLA",
             "SMART":
            CO2emissions = 0
            gasMileage = 0
        default:
            CO2emissions = -1
            gasMileage = -1
        }
        
//        let x = 1.23556789
//        let y = Double(round(1000*x)/1000)
//        print(y)  // 1.236
        CO2emissions = CO2emissions * 21.687
        let CO2emissionsRounded = Double(round(1000*CO2emissions)/1000)
        
        cows = CO2emissions/2300
        let cowsRounded = Double(round(100*cows)/100)
        
        emissionNumber.text = String(CO2emissionsRounded) + " kg/yr"
        cowNumber.text = String(cowsRounded) + " cows"
        
        if cowsRounded >= 0.95 && cowsRounded < 1.05 {
            self.imageLeft.image = UIImage(named: "one.png")
        }
        
        if cowsRounded >= 1.05 && cowsRounded < 1.15 {
            self.imageLeft.image = UIImage(named: "one.png")
            self.imageRight.image = UIImage(named: "pointOne.png")
        }
        
        if cowsRounded >= 1.15 && cowsRounded < 1.25 {
            self.imageLeft.image = UIImage(named: "one.png")
            self.imageRight.image = UIImage(named: "pointTwo.png")
        }
        
        if cowsRounded >= 1.25 && cowsRounded < 1.35 {
            self.imageLeft.image = UIImage(named: "one.png")
            self.imageRight.image = UIImage(named: "pointThree.png")
        }
        
        if cowsRounded >= 1.35 && cowsRounded < 1.45 {
            self.imageLeft.image = UIImage(named: "one.png")
            self.imageRight.image = UIImage(named: "pointFour.png")
        }
        
        if CO2emissions < 0 {
            emissionNumber.text = "ERROR"
            cowNumber.text = "ERROR"
        }
        
        backButton.layer.cornerRadius = 7
    }

    // begin API stuff
    
    
    
    // end API stuff
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
