//
//  ProgrammingController.swift
//  VibhuGandikota
//
//  Created by Vibhu Gandikota on 4/23/16.
//  Copyright © 2016 Vibhu Gandikota. All rights reserved.
//

import UIKit
import Spring
import CLTypingLabel
import Auk

class ProgrammingController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  //  @IBOutlet weak var SlideText: UITextView!

    @IBOutlet weak var tableView: UITableView!
    
    var images = ["scratchlang.png", "ruby.png", "javalang.png", "swiftobjc.png"]
    
    var subText  = ["I started programming with Scratch. Learning and using the scratch programming language was extremely easy, and so I decided to start and look into a more complicated language.", "I learned the basics of programming through Ruby. It helped me understand the concept and got me very excited to learn and explore other languages and other ways of programming.", "I started learning java when I got my first Windows laptop. I had learned about the complexity involved with it, and I was intrigued by the possibility of advancing my programming skills.", "I began learning Objective-C because I had always wanted to develop something for IOS. Soon after my minimal understanding of the language, Swift 1.0 was released. I was able to quickly use swift as it was much more intuitive, and I haven't stopped using it!"]
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setup scene here...
        
        setupHomeButton()
        tableView.delegate = self
        tableView.dataSource = self
        
self.tableView.rowHeight = 250
        //setupScene()
        
        
        
    }
    
    var imagesss = [UIImage]()
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //@IBOutlet weak var imageView: UIImageView!
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        //cell.textLabel?.text = swiftBlogs[row]
        
        var image = UIImage(named: "kidsrubyimg.png")
    
        //var imageView = UIImageView(frame: CGRectMake(10, 10, 320, 128))
        cell.imageViewW.image = UIImage (named: images[indexPath.row])
        //cell.TextView.font = UIFont(name: "Avenir Next", size: 12)
        cell.TextView.text = subText[indexPath.row]
       // var imageView = UIImageView(frame: CGRectMake(100, 150, 320, 130)); // set as you want
        //var image = UIImage(named: "kidsrubyimg.png")
       //imageView.image = image[row]
        return cell
 
    }
    
    // MARK:  UITableViewDelegate Methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
       // print(swiftBlogs[row])
        var sites = ["https://scratch.mit.edu/","https://www.ruby-lang.org/en/","http://www.oracle.com/technetwork/topics/newtojava/overview/index.html","http://www.apple.com/swift/"]
        
        if let url = NSURL(string: sites[indexPath.row] ){
            UIApplication.sharedApplication().openURL(url)
        }
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
        
        performSegueWithIdentifier("backToHomeP", sender: self)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
}
