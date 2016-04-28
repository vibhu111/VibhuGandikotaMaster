//
//  FavSubjectsViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/25/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import ImageSlideshow
var x = 0
class FavSubjectsViewController: UIViewController {
    var timer = NSTimer()

    var imageView = ImageSlideshow()
    let SlideText = UITextView()
    var label = UILabel()

   /* override func viewDidLoad() {
        super.viewDidLoad()

      
    }
*/
    
    override func viewDidAppear(animated: Bool) {
        // Do any additional setup after loading the view.
       

        setupHomeButton()
        setupScene()
        x = 0
        
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
        
        x = 0
        //blur
        
        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        // 2
        var blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = self.view.bounds
        // 3
        self.view.addSubview(blurView)
        
        self.view.backgroundColor = UIColor (patternImage: UIImage(named: "1-f.png")!)

        
        
        
        
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
        
        
        
        
        
        
        
        
        imageView.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 420, 245)
        
        
        
        
        var image = UIImage(named: "myschoolimg.png")
        
        //imageView.image = image
        imageView.setImageInputs([ImageSource(image: UIImage(named: "math+sci.png")!), ImageSource(image: UIImage(named: "certificatepic.png")!), ImageSource(image: UIImage(named: "explorascreenshot.png")!)])
        imageView.pageControlPosition = PageControlPosition.InsideScrollView
        imageView.pageControl.currentPageIndicatorTintColor = UIColor.blackColor();
        imageView.pageControl.pageIndicatorTintColor = UIColor.whiteColor();

        
        imageView.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) - 30 )
        self.view.addSubview(imageView)
        
        
        
       label.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame),250 , 250 )
        label.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMinY(self.view.frame) + 75 )
        label.textColor = UIColor.whiteColor()
        label.font = UIFont(name: "Avenir-Black", size: 25)
        label.textAlignment = NSTextAlignment.Center
        label.alignmentRectForFrame(self.view.frame)
        label.numberOfLines = 0
        
        
        var tap = UITapGestureRecognizer(target: self, action: Selector("tappedMe"))
        imageView.addGestureRecognizer(tap)
        imageView.userInteractionEnabled = true
        
        
        
tick20()
        
        
        
        SlideText.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 320, 140)
        SlideText.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame) + 180 )
        
        SlideText.editable = false
        SlideText.selectable = false

        SlideText.font = UIFont(name: "Avenir Next", size: 17)
        SlideText.textColor = UIColor.whiteColor()
        
        
        
        SlideText.backgroundColor = UIColor .clearColor()
        SlideText.textAlignment = NSTextAlignment.Center
        
        SlideText.alignmentRectForFrame(self.view.frame)
        // SlideText.sendSubviewToBack(self.view)
        
        
        
        
        
        
        
        
        
        
        
        
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
            
            SlideText.text = "Math and science are my 2 favorite subjects. I’ve always liked the logical thinking styles involved in both subjects."
            self.view.addSubview(SlideText)
            
        } else if imageView.pageControl.currentPage == 1{
            var imm = "[Tap the image for more info...]"
            var wiii = "My friends and I participated in the ExploraVision competition"
            SlideText.text = imm + "\n" + "\n" + wiii
            
            self.view.addSubview(SlideText)
            
        } else if imageView.pageControl.currentPage == 2{
            var imm = "[Tap the image for more info...]"
            var wiii = "We won the regional ExploraVision championship for our idea to generate electricity from shoes."
            
            SlideText.text = imm + "\n" + "\n" + wiii
            self.view.addSubview(SlideText)
            
        }
        
        if imageView.pageControl.currentPage == 0{
            label.text = "I Love Math and Science"
            
            
        } else if imageView.pageControl.currentPage == 1{
            
            label.text = "Because of My Interest in Math and Science"
            
        } else if imageView.pageControl.currentPage == 2{
            
            
            label.text = "The Work Paid Off"
            
            
        }
        self.view.addSubview(label)
        
print("YOLOL")
        
        
    
        }//}
    
    func tappedMe(){
        if imageView.pageControl.currentPage == 0{
        
        
        
        } else if imageView.pageControl.currentPage == 1{
        
            if let url = NSURL(string: "http://www.exploravision.org/" ){
                UIApplication.sharedApplication().openURL(url)
            }
        
        } else if imageView.pageControl.currentPage == 2{
        
        
            if let url = NSURL(string: "http://dev.nsta.org/evwebs/1297g/" ){
            UIApplication.sharedApplication().openURL(url)
            }


        
        }
       /* if let url = NSURL(string: "http://www.west-windsor-plainsboro.k12.nj.us/schools/grover_middle_school" ){
            UIApplication.sharedApplication().openURL(url)
        }
        
        */
        
    }
    
    
    func setupHomeButton(){
        
        
    }
    
    
    func homeButtonTouched(){
        print("Functioning Preperly")
        x = 1
        performSegueWithIdentifier("backToAcademics1", sender: self)
        self.view.removeFromSuperview()
        timer.invalidate()
        //self.dismissViewControllerAnimated(true, completion: {});

    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    



}
