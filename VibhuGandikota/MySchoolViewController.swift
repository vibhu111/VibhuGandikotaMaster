//
//  MySchoolViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/25/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit

class MySchoolViewController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        setupHomeButton()
        setupScene()

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func setupScene(){
        
        //blur
        
        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        // 2
        var blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = self.view.bounds
        // 3
        self.view.addSubview(blurView)
        
        
       
        
       
        
        //home
        var homebuttonImage = UIImageView(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 650, 50))
        
        
        homebuttonImage.image = UIImage(named: "Home.png")
        self.view.addSubview(homebuttonImage)
        homebuttonImage.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 22.5)
        
        homeButton.frame = (frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60))
        homeButton.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 22.5)
        self.view.addSubview(homeButton)
        homeButton.addTarget(self, action: "homeButtonTouched", forControlEvents: .TouchUpInside)
        
        homebuttonImage.alignmentRectForFrame(self.view.frame)
        homeButton.alignmentRectForFrame(self.view.frame)

        
        
        
        
        
        
        
        
     
        
        
        
    var image = UIImage(named: "myschoolimg.png")
        var imageView = UIImageView(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 420, 245))

        imageView.image = image
        imageView.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) - 30 )
        self.view.addSubview(imageView)
        
        
        var label:UILabel = UILabel(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame),250 , 250 ))
        label.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 60 )
        label.textColor = UIColor.whiteColor()
        label.font = UIFont(name: "Avenir-Black", size: 25)
        label.textAlignment = NSTextAlignment.Center
        label.alignmentRectForFrame(self.view.frame)
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.numberOfLines = 3
        label.text = "Welcome to Thomas Grover Middle School!"
        self.view.addSubview(label)
        
    
    
        var tap = UITapGestureRecognizer(target: self, action: Selector("tappedMe"))
        imageView.addGestureRecognizer(tap)
        imageView.userInteractionEnabled = true
        
        
       
        
        
        
        
        let SlideText = UITextView()
        SlideText.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 320, 140)
        SlideText.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) + 180 )
        
        SlideText.editable = false
        SlideText.selectable = false

        SlideText.font = UIFont(name: "Avenir Next", size: 18)
        SlideText.textColor = UIColor.whiteColor()
        
        var imm = "[Tap the image for more info...]"
        
        var wiii = "This is a great school, and I'm proud to be a part of it."
        SlideText.text = imm + "\n" + "\n" + wiii
        

        
        SlideText.backgroundColor = UIColor .clearColor()
        SlideText.textAlignment = NSTextAlignment.Center
        self.view.addSubview(SlideText)
        
        SlideText.alignmentRectForFrame(self.view.frame)
       // SlideText.sendSubviewToBack(self.view)

        
        
        
        
        
        
        
        
        
        
        
    }
    
    func tappedMe(){
    
        if let url = NSURL(string: "http://www.west-windsor-plainsboro.k12.nj.us/schools/grover_middle_school" ){
            UIApplication.sharedApplication().openURL(url)
        }
        
        
    
    }
    
    
    func setupHomeButton(){
        
        
    }
    
    
    func homeButtonTouched(){
        print("Functioning Preperly")
        
        performSegueWithIdentifier("backToAcademics2", sender: self)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    

    
}
