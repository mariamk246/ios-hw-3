//
//  ViewController.swift
//  X-O
//
//  Created by Mariam Alkandari on 9/29/20.
//  Copyright © 2020 Mariam Alkandari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var xOGame: UILabel!
    @IBOutlet weak var turnsLabel: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    
    var counter = 0


    @IBAction func restartTap(_ sender: UIButton) {
        restartGame()
    }
    
    @IBAction func click(_ sender: UIButton) {
        if counter % 2 == 0{
            sender.setTitle("X", for: .normal)
            sender.setTitleColor(.purple, for: .normal)
            turnsLabel.text = "O - Turn"
        }
        else{
            sender.setTitle("O", for: .normal)
            sender.setTitleColor(.lightGray, for: .normal)
            turnsLabel.text = "X - Turn"
        }
        counter += 1
        sender.isEnabled = false
        
        if  (b1.titleLabel?.text == "X" && b2.titleLabel?.text == "X" && b3.titleLabel?.text == "X") ||
            (b4.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b6.titleLabel?.text == "X") ||
            (b7.titleLabel?.text == "X" && b8.titleLabel?.text == "X" && b9.titleLabel?.text == "X") ||
            (b1.titleLabel?.text == "X" && b4.titleLabel?.text == "X" && b7.titleLabel?.text == "X") ||
            (b2.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b8.titleLabel?.text == "X") ||
            (b3.titleLabel?.text == "X" && b6.titleLabel?.text == "X" && b9.titleLabel?.text == "X") ||
            (b1.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b9.titleLabel?.text == "X") ||
            (b3.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b7.titleLabel?.text == "X")
           
            {
                print("X WINS")
                let alertController = UIAlertController(title: " X WINS", message: "CLICK TO PLAY AGAIN !", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "REPLAY", style: .cancel, handler: nil)
                alertController.addAction(restartAction)
                present(alertController, animated: true ,completion: nil)
        }
        
                if (b1.titleLabel?.text == "O" && b2.titleLabel?.text == "O" && b3.titleLabel?.text == "O") ||
                   (b4.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b6.titleLabel?.text == "O") ||
                   (b7.titleLabel?.text == "O" && b8.titleLabel?.text == "O" && b9.titleLabel?.text == "O") ||
                   (b1.titleLabel?.text == "O" && b4.titleLabel?.text == "O" && b7.titleLabel?.text == "O") ||
                   (b2.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b8.titleLabel?.text == "O") ||
                   (b3.titleLabel?.text == "O" && b6.titleLabel?.text == "O" && b9.titleLabel?.text == "O") ||
                   (b1.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b9.titleLabel?.text == "O") ||
                   (b3.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b7.titleLabel?.text == "O")
      
        {
             print("O WINS")
            let alertController = UIAlertController(title: " O WINS", message: "CLICK TO PLAY AGAIN !", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "REPLAY", style: .cancel, handler: nil)
            alertController.addAction(restartAction)
            present(alertController, animated: true ,completion: nil)
        }
        
        
    }
    
    func restartGame(){
        b1.setTitle("", for: .normal)
        b1.titleLabel?.text = ""
        b1.isEnabled = true
        
        b2.setTitle("", for: .normal)
        b2.titleLabel?.text = ""
        b2.isEnabled = true
        
        b3.setTitle("", for: .normal)
        b3.titleLabel?.text = ""
        b3.isEnabled = true
        
        
        b4.setTitle("", for: .normal)
        b4.titleLabel?.text = ""
        b4.isEnabled = true
        
        
        b5.setTitle("", for: .normal)
        b5.titleLabel?.text = ""
        b5.isEnabled = true
        
        b6.setTitle("", for: .normal)
        b6.titleLabel?.text = ""
        b6.isEnabled = true
        
        b7.setTitle("", for: .normal)
        b7.titleLabel?.text = ""
        b7.isEnabled = true
        
        b8.setTitle("", for: .normal)
        b8.titleLabel?.text = ""
        b8.isEnabled = true
        
        b9.setTitle("", for: .normal)
        b9.titleLabel?.text = ""
        b9.isEnabled = true
    }
}

