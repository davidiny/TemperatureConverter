//
//  ViewController.swift
//  TempConverterApp
//
//  Created by David Inyangson on 9/7/19.
//  Copyright © 2019 David Inyangson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var finalTemp: UILabel!
  @IBOutlet weak var finalUnit: UILabel!
  @IBOutlet weak var inputTemp: UITextField!
  @IBOutlet weak var initialUnit: UILabel!
  
  
  let tempConverter = TempConverter()
  
  @IBAction func buttonPushed(sender: UIButton) {
    let userData:String = inputTemp.text!
    if (userData == "") {
      tempConverter.inputTemp = -500
      tempConverter.convert()
      finalTemp.text = tempConverter.convertedTempDisplay
      
    }
    else{
      if let userData = Int(userData) {
        tempConverter.inputTemp = userData
        print(userData)
        print(tempConverter.inputTemp)
        tempConverter.convert()
        finalTemp.text = tempConverter.convertedTempDisplay
        print(finalTemp.text)
        print(tempConverter.convertedTempDisplay)
      }
    }
  }
 
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    finalTemp.text = "--"
    self.inputTemp.delegate = self

    // Do any additional setup after loading the view.
  }
  
  @IBAction func switchChanged() {
    tempConverter.toggleUnits()
    updateLabels()
  }

  

  func updateLabels() {
    if initialUnit.text == "F" {
      initialUnit.text = "C"
      finalUnit.text = "F"
    }
    else {
      initialUnit.text = "F"
      finalUnit.text = "C"
      }
    }

  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    inputTemp.resignFirstResponder()
    return true
  }
  
  func updateDisplay() {
    
  }


}

