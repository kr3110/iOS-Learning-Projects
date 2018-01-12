//
//  ViewController.swift
//  calculator
//
//  Created by Kevin Reinoso on 1/12/18.
//  Copyright © 2018 Kevin Reinoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //text field variable

    @IBOutlet weak var text: UITextField!
 
    //variables for switching between decimal and integer
    var normal = true
    var double = false
    var previous = 0
    var current = 0
    var sumbol = "="
    var previousDouble = 0.0
    var currentDouble = 0.0
    var curretDecimals=0
    
    
    override func viewDidLoad() {
        text.text = ""
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func zero(_ sender: UIButton) {
       textWrite(digit: "0")
    }
    @IBAction func one(_ sender: UIButton) {
      textWrite(digit: "1")
    }
    @IBAction func two(_ sender: UIButton) {
         textWrite(digit: "2")
    }
    
    @IBAction func three(_ sender: UIButton) {
       textWrite(digit: "3")
    }
    @IBAction func four(_ sender: UIButton) {
              textWrite(digit: "4")
    }
    @IBAction func five(_ sender: UIButton) {
             textWrite(digit: "5")
    }
    @IBAction func six(_ sender: UIButton) {
          textWrite(digit: "6")
    }
    @IBAction func seven(_ sender: UIButton) {
           textWrite(digit: "7")
    }
    @IBAction func eight(_ sender: UIButton) {
            textWrite(digit: "8")
    }
 
    @IBAction func nine(_ sender: UIButton) {
          textWrite(digit: "9")
    }
    @IBAction func double(_ sender: UIButton) {
        textWrite(digit: ".")
    }
    func textWrite(digit: String){
        if(digit=="." && double == true){
            return
        }
        if text.text=="0" {
            text.text = digit
        }else if (text.text=="0" || text.text == "" ) && (digit == "."){
            text.text="0."
        } else{
            text.text = text.text!+digit
        }
        if(digit=="."){
            double=true
        }
    }
    @IBAction func equal(_ sender: UIButton) {
        
    }
    @IBAction func division(_ sender: UIButton) {
    }
    @IBAction func multiplication(_ sender: UIButton) {
    }
    @IBAction func subtraction(_ sender: UIButton) {
    }
    @IBAction func adition(_ sender: UIButton) {
    }
    @IBAction func porcentage(_ sender: UIButton) {
    }
}

