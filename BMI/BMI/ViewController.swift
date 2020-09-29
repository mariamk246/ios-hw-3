//
//  ViewController.swift
//  BMI
//
//  Created by Mariam Alkandari on 9/26/20.
//  Copyright © 2020 Mariam Alkandari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bmiLablel: UILabel!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var bmiLabel2: UILabel!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var statusResult: UILabel!
    


    @IBAction func calculate(_ sender: UIButton) {
       let height = Double (heightField.text!)!
       let weight = Double (weightField.text!)!
       let finalBmi = weight / (height * height)
        bmiResult.text = " \(finalBmi) "

        if finalBmi < 18.5 {
            statusResult.text = "ضعيف"
             }else if finalBmi < 30.0{
                statusResult.text = "وزن طبيعي"
             }else if finalBmi < 40.0{
                 statusResult.text = "سمنة خفيفة"
             }else if finalBmi < 45.0{
               statusResult.text = "سمنة مفرطة"
    }
    
     
    }
    
}
