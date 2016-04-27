//
//  HomePage.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import Spring
import CLTypingLabel

var homeButton = UIButton()
var ProgrammingIcon = UIButton()
var MusicIcon = UIButton()
var InterestsIcon = UIButton()
var MyAppsIcon = UIButton()
var AboutMeIcon = UIButton()
var AcademicsIcon = UIButton()
var l1 = UILabel()
var l2 = UILabel()
var l3 = UILabel()
var l4 = UILabel()
var l5 = UILabel()
var l6 = UILabel()

//var homebuttonImage = UIImage()
class HomePage: UIViewController {
    
    
   /*
    override func viewDidLoad() {
        super.viewDidLoad()
     


    }*/
    
    
    
    override func viewDidAppear(animated: Bool) {
        //Setup scene here...
        setupHomeButton()
        setupHomeIcons()
        //self.view.backgroundColor = UIColor .blackColor()
        

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "1-f.png")!)
        

    }
  
    
    
    func setupHomeButton(){
        
        

    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func setupHomeIcons(){
        
        
        //HOME BUTTON + BLUR
        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        // 2
        var blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = self.view.bounds
        // 3
        self.view.addSubview(blurView)
        
        
        
        

        
        var homebuttonImage = UIImageView(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 650, 50))
        
        
        homebuttonImage.image = UIImage(named: "Home.png")
        self.view.addSubview(homebuttonImage)
        homebuttonImage.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 22.5)
        
        homeButton.frame = (frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60))
        homeButton.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 22.5)
        self.view.addSubview(homeButton)
        //homeButton.addTarget(self, action: "homeButtonTouched", forControlEvents: .TouchUpInside)

        
        
        
        
        
        
        
        
        
        
        
        
        
    ProgrammingIcon.backgroundColor = UIColor (patternImage: UIImage(named: "Programming.png")!)
        MusicIcon.backgroundColor = UIColor (patternImage: UIImage(named: "Music.png")!)
        InterestsIcon.backgroundColor = UIColor (patternImage: UIImage(named: "Interests.png")!)
        MyAppsIcon.backgroundColor = UIColor (patternImage: UIImage(named: "My Apps.png")!)
        AboutMeIcon.backgroundColor = UIColor (patternImage: UIImage(named: "About Me.png")!)
        AcademicsIcon.backgroundColor = UIColor (patternImage: UIImage(named: "Academics.png")!)

        ProgrammingIcon.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        ProgrammingIcon.center = CGPointMake(CGRectGetMidX(self.view.frame) - 85, CGRectGetMinY(self.view.frame) + 110 )
ProgrammingIcon.alignmentRectForFrame(self.view.frame)
    self.view.addSubview(ProgrammingIcon)
        
        
        
        MusicIcon.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        MusicIcon.center = CGPointMake(CGRectGetMidX(self.view.frame) + 85, CGRectGetMinY(self.view.frame) + 110 )
        MusicIcon.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(MusicIcon)
        
        
        AcademicsIcon.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        AcademicsIcon.center = CGPointMake(CGRectGetMidX(self.view.frame) - 85, CGRectGetMidY(self.view.frame) - 30)
        AcademicsIcon.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(AcademicsIcon)
        
        
        
        InterestsIcon.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        InterestsIcon.center = CGPointMake(CGRectGetMidX(self.view.frame) + 85, CGRectGetMidY(self.view.frame) - 30 )
        InterestsIcon.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(InterestsIcon)
        
        
        MyAppsIcon.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        MyAppsIcon.center = CGPointMake(CGRectGetMidX(self.view.frame) + 85, CGRectGetMaxY(self.view.frame) - 170 )
        MyAppsIcon.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(MyAppsIcon)
        
        
        
        AboutMeIcon.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        AboutMeIcon.center = CGPointMake(CGRectGetMidX(self.view.frame) - 85, CGRectGetMaxY(self.view.frame) - 170 )
        AboutMeIcon.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(AboutMeIcon)
        
        
        l1.font = UIFont(name: "HelveticaNeue-Light", size: 10.25)
        l1.text = "Programming"
        l1.textColor = UIColor .whiteColor()
       l1.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        l1.center = CGPointMake(CGRectGetMidX(self.view.frame) - 85, CGRectGetMinY(self.view.frame) + 150 )//-40 icon
        l1.textAlignment = NSTextAlignment.Center
        self.view.addSubview(l1)
        
        l2.font = UIFont(name: "HelveticaNeue-Light", size: 10.25)
        l2.text = "Music"
        l2.textColor = UIColor .whiteColor()
        l2.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        l2.center = CGPointMake(CGRectGetMidX(self.view.frame) + 85, CGRectGetMinY(self.view.frame) + 150 )//-40 icon
        l2.textAlignment = NSTextAlignment.Center
        self.view.addSubview(l2)
        
        l3.font = UIFont(name: "HelveticaNeue-Light", size: 10.25)
        l3.text = "Academics"
        l3.textColor = UIColor .whiteColor()
        l3.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        l3.center = CGPointMake(CGRectGetMidX(self.view.frame) - 85, CGRectGetMidY(self.view.frame) + 10 )//-40 icon
        l3.textAlignment = NSTextAlignment.Center
        self.view.addSubview(l3)
        
        l4.font = UIFont(name: "HelveticaNeue-Light", size: 10.25)
        l4.text = "Interests"
        l4.textColor = UIColor .whiteColor()
        l4.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        l4.center = CGPointMake(CGRectGetMidX(self.view.frame) + 85, CGRectGetMidY(self.view.frame) + 10 )//-40 icon
        l4.textAlignment = NSTextAlignment.Center
        self.view.addSubview(l4)
        
        l5.font = UIFont(name: "HelveticaNeue-Light", size: 10.25)
        l5.text = "About Me"
        l5.textColor = UIColor .whiteColor()
        l5.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        l5.center = CGPointMake(CGRectGetMidX(self.view.frame) - 85, CGRectGetMaxY(self.view.frame) - 130 )//-40 icon
        l5.textAlignment = NSTextAlignment.Center
        self.view.addSubview(l5)
        
        l6.font = UIFont(name: "HelveticaNeue-Light", size: 10.25)
        l6.text = "My Apps"
        l6.textColor = UIColor .whiteColor()
        l6.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 60, 60)
        l6.center = CGPointMake(CGRectGetMidX(self.view.frame) + 85, CGRectGetMaxY(self.view.frame) - 130 )//-40 icon
        l6.textAlignment = NSTextAlignment.Center
        self.view.addSubview(l6)
        ProgrammingIcon.alignmentRectForFrame(self.view.frame)
        MusicIcon.alignmentRectForFrame(self.view.frame)
        AcademicsIcon.alignmentRectForFrame(self.view.frame)
        AboutMeIcon.alignmentRectForFrame(self.view.frame)
        MyAppsIcon.alignmentRectForFrame(self.view.frame)
        InterestsIcon.alignmentRectForFrame(self.view.frame)

        
        ProgrammingIcon.addTarget(self, action: "buttonTappedp", forControlEvents: .TouchUpInside)
        MusicIcon.addTarget(self, action: "buttonTappedm", forControlEvents: .TouchUpInside)
        AcademicsIcon.addTarget(self, action: "buttonTappeda", forControlEvents: .TouchUpInside)
        AboutMeIcon.addTarget(self, action: "buttonTappedaa", forControlEvents: .TouchUpInside)
        MyAppsIcon.addTarget(self, action: "buttonTappedmm", forControlEvents: .TouchUpInside)
        InterestsIcon.addTarget(self, action: "buttonTappedi", forControlEvents: .TouchUpInside)

    
    }
    func homeButtonTouched(){
  //  print("Functioning Preperly")
    
        performSegueWithIdentifier("BackToStart", sender: self)
    
    }
    
    func buttonTappedp(){

        
        performSegueWithIdentifier("ProgrammingSegue", sender: self)
        
    }
    
    func buttonTappedm(){
        performSegueWithIdentifier("MusicSegue", sender: self)

        
    }
    
    func buttonTappeda(){
        performSegueWithIdentifier("AcademicsSegue", sender: self)

        
    }
    
    func buttonTappedaa(){
        performSegueWithIdentifier("AboutMeSegue", sender: self)

    }
    
    func buttonTappedmm(){
        performSegueWithIdentifier("MyAppsSegue", sender: self)

    }
    
    func buttonTappedi(){
        performSegueWithIdentifier("InterestsSegue", sender: self)

    }
    
}