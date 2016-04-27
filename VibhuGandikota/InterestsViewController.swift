//
//  InterestsViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import ImageSlideshow
class InterestsViewController: UIViewController {
/*
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
           }
     
     
*/
    
    var timer = NSTimer()
    let SlideText = UITextView()

    let imageView = ImageSlideshow()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        setupHomeButton()
        
        setupScene()
        SlideText.selectable = false

        
        
    }
    
    
    
    
    
    func setupHomeButton(){
        
        
        
        
    }
    
    
    func homeButtonTouched(){
        print("Functioning Preperly")
        
        performSegueWithIdentifier("backToHomeI", sender: self)
        timer.invalidate()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
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
        
        
        
        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        // 2
        var blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = self.view.bounds
        // 3
        self.view.addSubview(blurView)
        
        
        
        self.view.backgroundColor = UIColor (patternImage: UIImage(named: "1-f.png")!)
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
        
        
        
        
        
        
        
        
        //var imagee : UIImage = UIImage(named:"MusicYOCJ.png")!
        //var imageeee : UIImage = UIImage(named:"MusicYOCJ.png")!
        
        //var logoImages = [imagee, imageeee]
        
        imageView.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 500, 250)
        SlideText.editable = false
        SlideText.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 320, 260)
        SlideText.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 185 )
                SlideText.font = UIFont(name: "Avenir Next", size: 22)
        SlideText.text = ""
SlideText.backgroundColor = UIColor .clearColor()
        SlideText.textAlignment = NSTextAlignment.Justified
        self.view.addSubview(SlideText)
        //image.image = UIImage(named: "MusicYOCJ")
        imageView.setImageInputs([ImageSource(image: UIImage(named: "bball")!), ImageSource(image: UIImage(named: "fball")!),ImageSource(image: UIImage(named: "reading")!), ImageSource(image: UIImage(named: "Physics")!)])
        imageView.sizeToFit()
        SlideText.textColor = UIColor.whiteColor()
        SlideText.alignmentRectForFrame(self.view.frame)
        imageView.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 120 )
        self.view.addSubview(imageView)
        imageView.alignmentRectForFrame(self.view.frame)
        
        SlideText.sendSubviewToBack(self.view)
        imageView.pageControlPosition = PageControlPosition.InsideScrollView
        //image.pageControl.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 160 )
        imageView.pageControl.currentPageIndicatorTintColor = UIColor.whiteColor();
        imageView.pageControl.pageIndicatorTintColor = UIColor.blackColor();
        
        tick20()
    }
    
    
    
    func tick20(){
        x = 0
        
        /*  var first = NSUserDefaults.standardUserDefaults().valueForKey("unopened") as? String
         if first! == "opened"{
         
         
         NSUserDefaults.standardUserDefaults().setValue("opened1", forKey: "unopened")
         
         */
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
                                                       target: self,
                                                       selector: Selector("tick20"),
                                                       userInfo: nil,
                                                       repeats: false)
        
        if imageView.pageControl.currentPage == 0{
            
            SlideText.text = "When I'm not programming or playing music, I enjoy playing basketball outside with my friends"
            self.view.addSubview(SlideText)
            
        } else if imageView.pageControl.currentPage == 1{
            //var imm = "[Tap the image for more info...]"
            var wiii = "I also play football. I like football as well, because like basketball it requires strategic thinking skills in order to land or catch a pass"
            SlideText.text = wiii
            
            self.view.addSubview(SlideText)
            
        } else if imageView.pageControl.currentPage == 2{
           // var imm = "[Tap the image for more info...]"
            var wiii = "I enjoy reading realistic fiction in my free time, as it is relaxing, and captivating"
            
            SlideText.text = wiii
            self.view.addSubview(SlideText)
            
        } else if imageView.pageControl.currentPage == 3{
            // var imm = "[Tap the image for more info...]"
            var wiii = "My passion for science drove me to learn about different scientific topics. I often study and learn about physics, because it is very fascinating."
            
            SlideText.text = wiii
            self.view.addSubview(SlideText)
            
        }
    
    
        
        
        
        print("timerFunctioning")

    
    
   
}
}