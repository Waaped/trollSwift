//
//  ViewController.swift
//  EggTimer
//
//
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    @IBOutlet weak var TimeLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTimes = ["Soft":5,"Medium":7,"Hard":12]

    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        
//        self.progressBar.progress = 1
        
        timer.invalidate()
        
        //Invalidates the timer, stops timer from running at the same time as over timer everytime we press a button
        
        
        let hardness = sender.currentTitle!

        let totalTime = eggTimes[hardness]!
        
        self.progressBar.progress = 0
        //Invalidates/refreshes progress bar after button is clicked again
        
        secondsPassed = 0
         //Seconds Passed reset, feels sloppy, it probably is
        TimeLabel.text = hardness
        
        
    
    timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
        if self.secondsPassed < totalTime {
        
            //Fixed this by creating <=, but angela solution explains the importance of how data can affect the view layer in a loop hierarachy.
            
//            print ("\(self.secondsPassed) seconds")
            self.secondsPassed += 1
            self.progressBar.progress = Float(self.secondsPassed) / Float(totalTime)
       
            
       
        } else {
                       Timer.invalidate()
                    self.TimeLabel.text = "Done"
            self.playSound()
                 
                   
        }
               }
    }
       
        
        
    


   func playSound() {
       
       let url = Bundle.main.url(forResource:"alarm_sound", withExtension: "mp3")
       player = try! AVAudioPlayer(contentsOf: url!)
       player.play()
    
    }
    
}
