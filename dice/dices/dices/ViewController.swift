//
//  ViewController.swift
//  dices
//
//  Created by Kevin Reinoso on 1/8/18.
//  Copyright © 2018 Kevin Reinoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var diceIndex1=0, diceIndex2=0;
    
    let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        rollDice()
    }
    func rollDice(){
        diceIndex1=Int(arc4random_uniform(6))
        diceIndex2=Int(arc4random_uniform(6))
        print(diceIndex1)
        diceImageView1.image=UIImage(named: diceArray[diceIndex1])
        diceImageView2.image=UIImage(named: diceArray[diceIndex2])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
    }
}

