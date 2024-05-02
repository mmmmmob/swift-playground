//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var eggStatus: UILabel!
    @IBOutlet weak var eggProgress: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    // declare var timer as a Timer object with optionals (it can be a timer running or not, who knows?)
    var timer: Timer?
    
    var totalTimes = 0
    var secondPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        totalTimes = eggTimes[hardness]!
                
        // use optionals to safely skip the invalidate() if timer value is nil
        // invalidate() is using to reset the value to nil
        timer?.invalidate()
        
        // set a timer with instructions to timer variable
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] (timer) in
            guard let self = self else { return }
            
            if secondPassed < totalTimes {
                secondPassed += 1
                var percentage = Float(secondPassed) / Float(totalTimes)
                eggProgress.setProgress(percentage, animated: true)
            } else {
                timer.invalidate()
                eggStatus.text = "Done!"
                secondPassed = 0
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    // self is to tell Swift not to take eggStatus from other variable other than the self (main view) -- for safety check
                    self.eggStatus.text = "How do you like your eggs?"
                    self.eggProgress.progress = 0.0

                         }
            }
            
        }
    }
}
