//
//  ViewController.swift
//  egg-timer
//
//  Created by Jen Homann on 11/29/17.
//  Copyright © 2017 Jen Homann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var currentTime = 210
    @IBOutlet var countdownLabel: UILabel!
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countdown), userInfo: nil, repeats: true)
    }
    
    @IBAction func minusTenButton(_ sender: Any) {
        if currentTime >= 10 {
            currentTime-=10
            setCountdownLabel()
        }
    }
    
    @IBAction func resetTimerButton(_ sender: Any) {
        currentTime=210
        setCountdownLabel()
    }
    
    @IBAction func plusTenButton(_ sender: Any) {
        currentTime+=10
        setCountdownLabel()
    }
    
    func setCountdownLabel() {
        countdownLabel.text = "\(currentTime)"
    }
    
    func countdown() {
        currentTime-=1
        setCountdownLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCountdownLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

