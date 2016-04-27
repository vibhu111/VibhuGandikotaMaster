//
//  MyAppsViewController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit

class MyAppsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var images = ["scipi12.png","fi.png", "ffi.png", "bpi.png", "mni.png", "cysi.png", "csi.png"]

    var imagesss = [UIImage]()
    
    var appNames = ["Smart Converter","Fexplosion","Flappy Friends","Bubble Poppers","Math Now","Can You Spell?","Color Swipes"]

    
    var catagories = ["Utilities","Games","Games","Games","Games","Games","Games"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidAppear(animated: Bool) {
        setupHomeButton()
        
        setupScene()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.rowHeight = 150
        
        
    }
    
    /*override func viewDidLoad() {
        //self.tableView.separatorColor = UIColor.clearColor()

    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScene(){
             
        
        
        
        
        
        
    }
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //@IBOutlet weak var imageView: UIImageView!
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! interestsTableViewCell
        
        //cell.textLabel?.text = swiftBlogs[row]
        
        cell.imageViewW.image = UIImage (named: images[indexPath.row])


        
        cell.AppName.text = appNames[indexPath.row]
        cell.appCreater.text = catagories[indexPath.row]
        xt = cell.AppName.text!
        return cell
        
    }
    var xt = ""
    
    // MARK:  UITableViewDelegate Methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        // print(swiftBlogs[row])
        //ADD URL TO APP STORE
        var sites = ["https://itunes.apple.com/us/app/the-smart-converter/id846153156?ls=1&mt=8","https://itunes.apple.com/us/app/fexplosion/id860298357?ls=1&mt=8","https://itunes.apple.com/us/app/flappys-friends/id967617095?ls=1&mt=8","https://itunes.apple.com/us/app/bubble-poppers/id1034882004?ls=1&mt=8", "https://itunes.apple.com/us/app/math-now!/id978821728?ls=1&mt=8", "https://itunes.apple.com/us/app/can-you-spell-it/id1031939650?ls=1&mt=8", "https://itunes.apple.com/us/app/color-swipes/id1084858704?ls=1&mt=8"]
        
        if let url = NSURL(string: sites[indexPath.row] ){
            UIApplication.sharedApplication().openURL(url)
      }
 
         
         
 
        
        //performSegueWithIdentifier("toDetails", sender: self)
        
     
    
    
    
    
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
        
        performSegueWithIdentifier("backToHomeMM", sender: self)
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
