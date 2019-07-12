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
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var randomNumberArray: [Int] = []
    
    var mutipleOfTwoArray: [Int] = []
    
    var mutipleOfThreeArray: [Int] = []
    
    var mutipleOfFiveArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        contentLabel.text = ""
        
        segmentedControl.isHidden = true
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        
        updateContentLabel()
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
        
        updateContentLabel()
        
        segmentedControl.isHidden = false
    }

    func updateContentLabel() {
        
        if segmentedControl.selectedSegmentIndex == 0 {
            
            contentLabel.text = "2 的倍數有：\(mutipleOfTwoArray)"
            
        } else if segmentedControl.selectedSegmentIndex == 1 {
            
            contentLabel.text = "3 的倍數有：\(mutipleOfThreeArray)"
            
        } else if segmentedControl.selectedSegmentIndex == 2 {
            
            contentLabel.text = "5 的倍數有：\(mutipleOfFiveArray)"
        }
    }
}

