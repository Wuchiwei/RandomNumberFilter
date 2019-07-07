//
//  ViewController.swift
//  RandomNumberFilter
//
//  Created by WU CHIH WEI on 2019/7/7.
//  Copyright © 2019 WU CHIH WEI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var mutipleOfTwoLabel: UILabel!
    
    @IBOutlet weak var mutipleOfThreeLabel: UILabel!
    
    @IBOutlet weak var mutipleOfFiveLabel: UILabel!
    
    var randomNumberArray: [Int] = []
    
    var mutipleOfTwoArray: [Int] = []
    
    var mutipleOfThreeArray: [Int] = []
    
    var mutipleOfFiveArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mutipleOfTwoLabel.text = ""
        
        mutipleOfThreeLabel.text = ""
        
        mutipleOfFiveLabel.text = ""
    }

    @IBAction func generateRandomNumber(_ sender: UIButton) {
        
        randomNumberArray = []
        
        mutipleOfTwoArray = []
        
        mutipleOfThreeArray = []
        
        mutipleOfFiveArray = []
        
        for _ in 0...9 {
            
            let randomNumber = Int.random(in: 0...9)
            
            randomNumberArray.append(randomNumber)
            
            if randomNumber % 2 == 0 {
                
                mutipleOfTwoArray.append(randomNumber)
            
            } else if randomNumber % 3 == 0 {
            
                mutipleOfThreeArray.append(randomNumber)
                
            } else if randomNumber % 5 == 0 {
                
                mutipleOfFiveArray.append(randomNumber)
                
            }
        }
        
        hintLabel.text = "Array 為 \(randomNumberArray)"
        
        mutipleOfTwoLabel.text = "2 的倍數有：\(mutipleOfTwoArray)"
        
        mutipleOfThreeLabel.text = "3 的倍數有：\(mutipleOfThreeArray)"
        
        mutipleOfFiveLabel.text = "5 的倍數有：\(mutipleOfFiveArray)"
    }
    
}

