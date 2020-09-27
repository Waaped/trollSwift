//
//  ViewController.swift
//  EggTimer
//
//
//

import UIKit



class ViewController: UIViewController {
    
    let eggTimes = ["Soft":5,"Medium":7,"Hard":12]

    
    
    
    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! //Have to remove optionals to create string
        
      //Play with user input later converting hours, minutes to seconds, and create progress bar etc. 

        let result = eggTimes[hardness]!*60 //Again String!
        
        var secondsRemaining = result
               Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                   if secondsRemaining > 0 {
                       print ("\(secondsRemaining) seconds")
                       secondsRemaining -= 1
                   } else {
                       Timer.invalidate()
                   }
               }
        // NStimer replaced with timer
        // My timer doesn't use Objective C selectors, so i don't need to call any @obj
        
//        print(result)
//
//        timerActive()
        
        
    

   
//
//    func timerActive (){
//
//
//    }
    
}
