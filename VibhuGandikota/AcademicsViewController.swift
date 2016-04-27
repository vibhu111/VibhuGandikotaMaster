//
//  AcademicsViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit

class AcademicsViewController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        
        setupHomeButton()
        
        setupScene()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScene(){
        
       

        
        
        var imagetop = UIImageView(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 425, 515))
        imagetop.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 120)
        var imagebottom = UIImageView(frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 425, 300))
         imagebottom.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 208)
        imagetop.alignmentRectForFrame(self.view.frame)
        imagetop.image = UIImage(named: "tgms.png")
        imagebottom.image = UIImage(named: "subjects.png")
        
        self.view.addSubview(imagetop)
self.view.bringSubviewToFront(imagetop)
        self.view.sendSubviewToBack(imagebottom)
        self.view.addSubview(imagebottom)
        
        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        // 2
        var blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = imagetop.bounds
        // 3
        imagetop.addSubview(blurView)
        
        
        
        
        // 2
        var blurView2 = UIVisualEffectView(effect: darkBlur)
        blurView2.frame = imagebottom.bounds
        // 3
        imagebottom.addSubview(blurView2)
        
        
        
        
        var topLabel = UILabel()
        topLabel.frame = (frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 425, 515))
        topLabel.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 150)
        topLabel.font = UIFont(name: "Avenir Next", size: 35)
        topLabel.alignmentRectForFrame(self.view.frame)
        topLabel.textAlignment = NSTextAlignment.Center
        topLabel.text = "My School"
        topLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(topLabel)
        var bottomLabel = UILabel()
        bottomLabel.frame = (frame: CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 425, 300))
        bottomLabel.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMaxY(self.view.frame) - 208)
        bottomLabel.font = UIFont(name: "Avenir Next", size: 35)
        bottomLabel.alignmentRectForFrame(self.view.frame)
        bottomLabel.textAlignment = NSTextAlignment.Center
        bottomLabel.text = "Favorite Subjects"
        bottomLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(bottomLabel)
        var topButton = UIButton()
        var bottomButton = UIButton()
        

        
        
        var tap = UITapGestureRecognizer(target: self, action: Selector("tappedMe"))
        var tap2 = UITapGestureRecognizer(target: self, action: Selector("tappedMe2"))
        imagetop.addGestureRecognizer(tap)
        imagetop.userInteractionEnabled = true
        imagebottom.addGestureRecognizer(tap2)
        imagebottom.userInteractionEnabled = true
        
        
    }
    
    
    func tappedMe(){
    
    performSegueWithIdentifier("MySchoolSegue", sender: self)
    
    }
    
    
    func tappedMe2(){
        
    performSegueWithIdentifier("FavSubjectsSegue", sender: self)

    
    }
    
    
    
    
    func setupHomeButton(){
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
        
        
    }
    
    
    
    func homeButtonTouched(){
        print("Functioning Preperly")
        
        performSegueWithIdentifier("backToHomeA", sender: self)
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

}
