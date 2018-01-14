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
    var double = false
    var newInput = false

    var symbol = "="
    var previous = 0.0
    var current = 0.0
    
    
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
        if text.text!.range(of:".") != nil {
           return
        }
        else{
            textWrite(digit: ".")
        }
    }
    func textWrite(digit: String){
        if newInput == true{
            text.text = ""
            newInput = false
        }
        if text.text=="0" {
            text.text = digit
        }else if (text.text=="0" || text.text == "" ) && (digit == "."){
            text.text="0."
        } else{
            text.text = text.text!+digit
        }
    }
    func operation() {
        current=Double(text.text!)!
        previous=calculation()
        current = 0.0
        if (previous.truncatingRemainder(dividingBy: 1) > 0.0 ) {
             text.text=String(previous)
        } else{
          text.text = String(Int(previous))
        }
        print(previous)
        newInput = true
    }
    func calculation()->Double{
        if symbol == "+"{
            return previous + current
        } else if symbol == "-"{
            return previous - current
        }
         else if symbol == "*"{
            return previous * current
        }
        else if symbol == "/"{
            if current == 0 {
                return 9999999999
            }
            return previous / current
        }
        else{
            return current
        }
    }
    @IBAction func equal(_ sender: UIButton) {
        operation()
        symbol = "="
      

    }
    @IBAction func division(_ sender: UIButton) {
        operation()
        symbol = "/"
      
    }
    
    @IBAction func multiplication(_ sender: UIButton) {
        operation()
        symbol = "*"
        
    }
    @IBAction func subtraction(_ sender: UIButton) {
    
        operation()
        symbol = "-"
    }
    @IBAction func adition(_ sender: UIButton) {
        operation()
        symbol = "+"
        
    }
    @IBAction func porcentage(_ sender: UIButton) {
        operation()
        symbol = "%"
    }
}

