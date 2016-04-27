//
//  AboutMeViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import Spring
class AboutMeViewController: UIViewController {
    
    var text = ["Name","Age","Favorite Color", "Favorite Sports Team", "Favorite Language"]
    var answers = ["Vibhu Gandikota", "14", "Orange", "Green Bay Packers", "Swift!!"]
    
    override func viewDidLoad() {
        setupHomeButton()
        

    
        // Do any additional setup after loading the view.
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        setupScene()

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupScene(){
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "1-f.png")!)

        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        // 2
        var blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = self.view.bounds
        // 3
        self.view.addSubview(blurView)
        
        
        
        //HOMEBUTTON
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
        

        
        
        
        
        
        
        //
        
        
        
        
        
        var imageView = SpringImageView()

        imageView.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 210, 280)
        imageView.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMaxY(self.view.frame) - 190 )
        imageView.image = UIImage(named: "MePic.png")
        imageView.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(imageView)
        imageView.animation = "fadeInUp"
        imageView.curve = "easeIn"
        imageView.duration = 2
        imageView.animate()

        
        var Label1 = SpringLabel()
        
        Label1.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 120, 275)
        Label1.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 25 )
        Label1.backgroundColor = UIColor.clearColor()
        Label1.textColor = UIColor.whiteColor()
        
        Label1.font = UIFont(name: "Avenir-Black", size: 22)
        Label1.textAlignment = NSTextAlignment.Center
        Label1.text = "Name:"
        self.view.addSubview(Label1)
        Label1.alignmentRectForFrame(self.view.frame)
        Label1.animation = "fadeInUp"
        Label1.curve = "easeIn"
        Label1.delay = 1
        Label1.duration = 2
        Label1.animate()
        
        var Label1p = SpringLabel()
        
        Label1p.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 200, 275)
        Label1p.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 60 )
        Label1p.backgroundColor = UIColor.clearColor()
        Label1p.textColor = UIColor.whiteColor()
        Label1p.font = UIFont(name: "Avenir Next", size: 22)
        Label1p.textAlignment = NSTextAlignment.Center
        Label1p.text = "Vibhu Gandikota"
        Label1p.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(Label1p)
        Label1p.alignmentRectForFrame(self.view.frame)
        Label1p.animation = "fadeInUp"
        Label1p.curve = "easeIn"
        Label1p.delay = 2
        Label1p.duration = 2
        Label1p.animate()
        
        var Label2 = SpringLabel()
        
        Label2.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 120, 275)
        Label2.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 105 )
        Label2.backgroundColor = UIColor.clearColor()
        Label2.textColor = UIColor.whiteColor()
        
        Label2.font = UIFont(name: "Avenir-Black", size: 22)
        Label2.textAlignment = NSTextAlignment.Center
        Label2.text = "Age:"
        self.view.addSubview(Label2)
        Label2.alignmentRectForFrame(self.view.frame)
        Label2.animation = "fadeInUp"
        Label2.curve = "easeIn"
        Label2.delay = 3
        Label2.duration = 2
        Label2.animate()
        
        var Label2p = SpringLabel()
        
        Label2p.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 200, 275)
        Label2p.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 140 )
        Label2p.backgroundColor = UIColor.clearColor()
        Label2p.textColor = UIColor.whiteColor()
        Label2p.font = UIFont(name: "Avenir Next", size: 22)
        Label2p.textAlignment = NSTextAlignment.Center
        Label2p.text = "14"
        Label2p.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(Label2p)
        Label2p.animation = "fadeInUp"
        Label2p.curve = "easeIn"
        Label2p.delay = 4
        Label2p.duration = 2
        Label2p.animate()
        
        
        var Label3 = SpringLabel()
        
        Label3.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 200, 275)
        Label3.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 185 )
        Label3.backgroundColor = UIColor.clearColor()
        Label3.textColor = UIColor.whiteColor()
        
        Label3.font = UIFont(name: "Avenir-Black", size: 22)
        Label3.textAlignment = NSTextAlignment.Center
        Label3.text = "Favorite Color:"
        self.view.addSubview(Label3)
        Label3.alignmentRectForFrame(self.view.frame)
        
        Label3.animation = "fadeInUp"
        Label3.curve = "easeIn"
        Label3.delay = 5
        Label3.duration = 2
        Label3.animate()
        

        var Label3p = SpringLabel()
        
        Label3p.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 200, 275)
        Label3p.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 220 )
        Label3p.backgroundColor = UIColor.clearColor()
        Label3p.textColor = UIColor.orangeColor()
        Label3p.font = UIFont(name: "Avenir Next", size: 22)
        Label3p.textAlignment = NSTextAlignment.Center
        Label3p.text = "Orange"
        Label3p.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(Label3p)
        
        Label3p.animation = "fadeInUp"
        Label3p.curve = "easeIn"
        Label3p.delay = 6
        Label3p.duration = 2
        Label3p.animate()
        
        
        
        var Label4 = SpringLabel()
        
        Label4.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 220, 275)
        Label4.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 265 )
        Label4.backgroundColor = UIColor.clearColor()
        Label4.textColor = UIColor.whiteColor()
    
        Label4.font = UIFont(name: "Avenir-Black", size: 22)
        Label4.textAlignment = NSTextAlignment.Center
        Label4.text = "Favorite Language:"
        self.view.addSubview(Label4)
        Label4.alignmentRectForFrame(self.view.frame)
        Label4.animation = "fadeInUp"
        Label4.curve = "easeIn"
        Label4.delay = 7
        Label4.duration = 2
        Label4.animate()
        var Label4p = SpringLabel()
        
        Label4p.frame = CGRectMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame), 200, 275)
        Label4p.center = CGPointMake(CGRectGetMidX(self.view.frame) , CGRectGetMinY(self.view.frame) + 300 )
        Label4p.backgroundColor = UIColor.clearColor()
        Label4p.textColor = UIColor.whiteColor()
        Label4p.font = UIFont(name: "Avenir-Black", size: 22)
        Label4p.textAlignment = NSTextAlignment.Center
        Label4p.text = "SWIFT"
        Label4p.alignmentRectForFrame(self.view.frame)
        self.view.addSubview(Label4p)
        Label4p.animation = "fadeInUp"
        Label4p.curve = "easeIn"
        Label4p.delay = 8
        Label4p.duration = 2
        Label4p.animate()
        

        
        
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */

    
    
    func setupHomeButton(){
        
    }

    
    func homeButtonTouched(){
        print("Functioning Preperly")
        
        performSegueWithIdentifier("backToHomeAA", sender: self)
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
