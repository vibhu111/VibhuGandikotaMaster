//
//  ViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/22/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import CLTypingLabel
import Spring

class ViewController: UIViewController {
    @IBOutlet var shimmeringView: FBShimmeringView!

    var clockLabel = UILabel()
    var clockDateLabel = UILabel()
    var slideToContinueLabel = SpringLabel()
    let currentDate = NSDate()
    let dateFormatter = NSDateFormatter()
    var timer = NSTimer()
    var Label1 = SpringLabel()
    var timer2 = NSTimer()

  var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        rightSwipe.direction = .Right
        
      
        
        view.addGestureRecognizer(rightSwipe)
        /*let isFirstLaunch = NSUserDefaults.standardUserDefaults().valueForKey("isFirstLaunch") as? Bool
        if isFirstLaunch == true {
            //It's the initial launch of application.
            introScenep1()

        }
        else {
            // not initial launch
        }
        */
        var first = NSUserDefaults.standardUserDefaults().valueForKey("unopen") as? String
        if first! == "open"{
        
        introScenep1()
        
        NSUserDefaults.standardUserDefaults().setValue("opened", forKey: "unopen")
        }
        
        
        
        

        
        dateFormatter.dateFormat = "HH:mm"
        let dateFormatter2 = NSDateFormatter()
        dateFormatter2.dateFormat = "EEEE, dd MMMM"
        var convertedDate = dateFormatter.stringFromDate(currentDate)
        var convertDate2 = dateFormatter2.stringFromDate(currentDate)
        // Do any additional setup after loading the view, typically from a nib.
        clockLabel.frame = CGRectMake(200, 200, CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame))
        clockLabel.textAlignment = NSTextAlignment.Center
        clockLabel.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 70 )
        clockLabel.textColor = UIColor .blackColor()
        clockLabel.font = UIFont(name: "HelveticaNeue-UltraLight", size: 60)
        
        clockDateLabel.frame = CGRectMake(100, 100, CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame))
        clockDateLabel.textAlignment = NSTextAlignment.Center
        clockDateLabel.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 110)
        clockDateLabel.textColor = UIColor.blackColor()
        clockDateLabel.font = UIFont(name: "HelveticaNeue-Light", size: 15)
        clockLabel.text = convertedDate
        self.view.addSubview(clockLabel)
        clockDateLabel.text = convertDate2
        self.view.addSubview(clockDateLabel)
        slideToContinueLabel.frame = CGRectMake(100, 100, CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame))
        slideToContinueLabel.textAlignment = NSTextAlignment.Center
        slideToContinueLabel.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) + 225)
        slideToContinueLabel.textColor = UIColor.blackColor()
        slideToContinueLabel.font = UIFont(name: "HelveticaNeue-Light", size: 24)
        slideToContinueLabel.text = "Slide to continue"
        updateClock()
        Label1.lineBreakMode = NSLineBreakMode.ByWordWrapping
        Label1.numberOfLines = 2


        var first2 = NSUserDefaults.standardUserDefaults().valueForKey("unopens") as? String
        if first2! == "opens"{
        
            
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
                                                            target: self,
                                                            selector: Selector("tick"),
                                                            userInfo: nil,
                                                            repeats: true)
        
        }}
    
    
   
    
    func updateClock(){
        
        
        // NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateClock", userInfo: nil, repeats: true)
        
        
    }
    
    
    
    
    func introScenep1(){
        
        Label1.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 300, 400)
        Label1.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) )
        
        Label1.textColor = UIColor.blackColor()
        Label1.font = UIFont(name: "HelveticaNeue-Thin", size: 65)
        Label1.textAlignment = NSTextAlignment.Center
        Label1.text = "Hello"
        self.view.addSubview(Label1)
        Label1.animation = "fadeOut"
        Label1.curve = "easeIn"
        Label1.delay  = 1
        Label1.duration = 1
        Label1.animate()
        NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: "introScenep2", userInfo: nil, repeats: false)
        
        
        
    }
    
    
    
    
    func introScenep2(){
        
        Label1.font = UIFont(name: "HelveticaNeue-Thin", size: 30)
        Label1.textAlignment = NSTextAlignment.Center
        Label1.text = "my name is Vibhu Gandikota,"
        Label1.delay = 0
        Label1.animation = "fadeIn"
        Label1.curve = "easeIn"
        Label1.duration = 1.5
        Label1.animate()
        self.view.addSubview(Label1)
        
     
        NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: "introScenep3", userInfo: nil, repeats: false)

    }
    
    
    func introScenep3(){
       
        
        Label1.animation = "fadeOut"
        Label1.curve = "easeIn"
        Label1.duration = 0.5
        Label1.animate()
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "introScenep4", userInfo: nil, repeats: false)

        // ADD MORE OF AN INTRO LATER LIKE MORE SUBSTANCE!!!!!
        
    }
    
    
    func introScenep4(){
        
        
         Label1.font = UIFont(name: "HelveticaNeue-Thin", size: 30)
        Label1.textAlignment = NSTextAlignment.Center
        Label1.text = "looks familiar right..."
        Label1.animation = "fadeIn"
        Label1.curve = "easeIn"
        Label1.duration = 1
        Label1.animate()
        self.view.addSubview(Label1)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "int45", userInfo: nil, repeats: false)
        
        
        
    }
    
    
    func int45(){
        
        Label1.animation = "fadeOut"
        Label1.curve = "easeIn"
        Label1.duration = 0.5
        Label1.animate()
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "introScenep5", userInfo: nil, repeats: false)

        
    }

    
    func introScenep5(){
        
        
        Label1.font = UIFont(name: "HelveticaNeue-Thin", size: 30)
        Label1.textAlignment = NSTextAlignment.Center
        Label1.text = "they say imitation is the sincerest form of flattery"
        Label1.animation = "fadeIn"
        Label1.curve = "easeIn"
        Label1.duration = 1
        Label1.animate()
        self.view.addSubview(Label1)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "int46", userInfo: nil, repeats: false)
        
        
        
    }
    
    func int46(){
        
        Label1.animation = "fadeOut"
        Label1.curve = "easeIn"
        Label1.duration = 0.5
        Label1.animate()
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "introScenep6", userInfo: nil, repeats: false)
        
        
    }
    
    
    func introScenep6(){
        
        
        Label1.font = UIFont(name: "HelveticaNeue-Thin", size: 30)
        Label1.textAlignment = NSTextAlignment.Center
        Label1.text = "I hope you enjoy my WWDC application"
        Label1.animation = "fadeIn"
        Label1.curve = "easeIn"
        Label1.duration = 1
        Label1.animate()
        self.view.addSubview(Label1)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "int47", userInfo: nil, repeats: false)
        
        
        
    }
    
    
    func int47(){
        
        Label1.animation = "fadeOut"
        Label1.curve = "easeIn"
        Label1.duration = 0.5
        Label1.animate()
        slideToUnlock()
        x = 1

    }
    
    

    
    

      @objc func tick() {
        
        clockLabel.text = dateFormatter.stringFromDate(currentDate)
            print("Time")
    }
        
            
        
            
        

    
    
    func slideToUnlock(){
       print("slideWorking")
            slideToContinueLabel.animation = "flash"
            slideToContinueLabel.duration = 3
           slideToContinueLabel.curve = "easeIn"
            slideToContinueLabel.animate()
            self.view.addSubview(slideToContinueLabel)
         timer2 = NSTimer.scheduledTimerWithTimeInterval(6, target: self, selector: #selector(ViewController.slideToUnlock), userInfo: nil, repeats: false)
       /* shimmeringView.contentView = slideToContinueLabel
        shimmeringView.contentView.frame = CGRectMake(100, 100, CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame))
        shimmeringView.contentView.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) + 225)
        shimmeringView.shimmering = true*/
}
    
            
        

       
        
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func handleSwipes(sender:UISwipeGestureRecognizer) {
        if x == 1{
            if (sender.direction == .Right) {
                print("Swipe Right")
                NSUserDefaults.standardUserDefaults().setValue("opened", forKey: "unopens")
                performSegueWithIdentifier("HomePage", sender: self)
                timer2.invalidate()
                timer.invalidate()
                
            }
        }}
    
    
    
}


