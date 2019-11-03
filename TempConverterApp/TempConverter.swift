//
//  TempConverter.swift
//  TempConverterApp
//
//  Created by David Inyangson on 9/7/19.
//  Copyright © 2019 David Inyangson. All rights reserved.
//

import Foundation


class TempConverter {
  
  var inputTemp: Int = 0
  var outputTemp: Int = 0
  var convertedTempDisplay: String = ""
  var tempUnits = "F"
  var fahrenheit = "F"
  var celsius = "C"
  
  
  private func tempBelowAbsoluteZeroFtoC(temp: Int) -> Bool {
    return temp < -454
  }
  
  
  private func tempBelowAbsoluteZeroCtoF(temp: Int) -> Bool {
    return temp < -270
  }
  
  private func convertToCelsius(temp: Int) -> Int {
    if tempBelowAbsoluteZeroCtoF(temp: temp) {
      return -1000
    }
    return 5 * (temp - 32) / 9
    
  }
  
  private func convertToFahrenheit(temp: Int) -> Int {
    if tempBelowAbsoluteZeroFtoC(temp: temp) {
      return -1000
    }
    return (9 * temp) / 5 + 32
  }
  
  // is this where we check the type of the input??? //
  func convert() {
    if tempUnits == "F" {
      if convertToCelsius(temp: inputTemp) == -1000 {
        convertedTempDisplay = "N/A"
      }
      else {
        convertedTempDisplay = String(convertToCelsius(temp: inputTemp))
      }
    }
    if tempUnits == "C" {
      if convertToFahrenheit(temp: inputTemp) == -1000 {
        convertedTempDisplay = "N/A"
      }
      else {
        convertedTempDisplay = String(convertToFahrenheit(temp: inputTemp))
      }
    }
  }
  
  func toggleUnits() {
    if tempUnits == "F" {
      tempUnits = celsius
      print(tempUnits)

    }
    else {
      tempUnits = fahrenheit
      print(tempUnits)

    }
  }
  
  
  
}
