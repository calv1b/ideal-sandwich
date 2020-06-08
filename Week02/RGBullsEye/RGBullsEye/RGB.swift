/*
* Copyright (c) 2015 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import Foundation
import UIKit

var game = BullsEyeGame()
var redSliderValue = ViewController().redSlider.value.rounded()

extension UIColor {
  convenience init(rgbStruct rgb: RGB) {
    let r = CGFloat(rgb.r) / 255.0
    let g = CGFloat(rgb.g) / 255.0
    let b = CGFloat(rgb.b) / 255.0
    self.init(red: r, green: g, blue: b, alpha:1.0)
  }
}

struct RGB {
  var r = 127
  var g = 127
  var b = 127
  //var redSliderValue: Int = Int(Double(ViewController().redSlider.value.rounded()))
  //var greenSliderValue: Int = Int(Double(ViewController().greenSlider.value.rounded()))
  //var blueSliderValue: Int = Int(Double(ViewController().blueSlider.value.rounded()))

  
  /* func difference(target: RGB) -> Double {
    let rDiff = Double(r - target.r)
    let gDiff = Double(g - target.g)
    let bDiff = Double(b - target.b)
    return sqrt((rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)/3) / 255.0  } */
    
    func differenceX(target: BullsEyeGame) -> Double {
        let redDiff = Double(game.targetRValue - target.currentRValue)
        let greenDiff = Double(game.targetGValue - target.currentGValue)
        let blueDiff = Double(game.targetBValue - target.currentBValue)
        return sqrt((redDiff * redDiff + greenDiff * greenDiff + blueDiff * blueDiff)/3) / 255.0 }
    
    
}


