//
//  ViewController.swift
//  poker
//
//  Created by Stephen Bell on 1/3/18.
//  Copyright © 2018 Stephen Bell. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet var cardd: [UIImageView]!
   
    
    
    @IBAction func buttonShuffle(_ sender: UIButton) {
        var holdingCards:[String] = []
        var alreadyUsed:[String] = []
let cardVals = ["A","2","3","4","5","6","7","8","9","10","J",  "Q","K"]
        
let suit = ["S","D","C","H"]
        
        
        var i = 0
        while i < 5{
            
            var suitCard = ""
        let suitIndx = Int(arc4random_uniform(4))
        
            suitCard = suit[suitIndx]
            // generate card in hand
            var cardVl = ""
            var cardNum = ""
            cardNum = cardVals[Int(arc4random_uniform(13))]
            
            //Name of card is cardVl
            cardVl = cardNum + suitCard
            // check for no duplication
            if alreadyUsed.contains(cardVl) == false{
            holdingCards.append(cardVl)
            alreadyUsed.append(cardVl)
            i += 1

            }
            
        }
        
        for v in 0...4{
            
            cardd[v].image = UIImage(named:holdingCards[v])
            
//
        }
        print (holdingCards)
//      let alert = UIAlertController(title:"Hand was dealt", message: "you lost", preferredStyle: .alert)
//
//       present(alert, animated: true)
//        let action = UIAlertAction(title: "Deal Again", style: .default, handler: nil)
//        alert.addAction(action)
//
        dismiss(animated: true, completion: nil)
    }

}
