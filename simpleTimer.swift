//
//  ViewController.swift
//  EggTimer
//
//
//

import UIKit



class ViewController: UIViewController {
    
    let eggTimes = ["Soft":5,"Medium":7,"Hard":12]

    
    var timer = Timer()
    
    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        
        timer.invalidate()
        
        //Invalidates the timer, stops timer from running at the same time as over timer everytime we press a button
        
        
        let hardness = sender.currentTitle!

        let result = eggTimes[hardness]!*60
        
        var secondsRemaining = result
              
        
    
    timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                   if secondsRemaining > 0 {
                       print ("\(secondsRemaining) seconds")
                       secondsRemaining -= 1
                   } else {
                       Timer.invalidate()
                   }
               }
    }
        //NStimer replaced with timer
        //My stack overflow timer doesn't use Objective C selectors, so i don't need to call any @obj
        
        
//        print(result)
//
//        timerActive()
        
        
    

   
//
//    func timerActive (){
//
//
//    }
    
}
