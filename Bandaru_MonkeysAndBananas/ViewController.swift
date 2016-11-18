//
//  ViewController.swift
//  Bandaru_MonkeysAndBananas
//
//  Created by sreekanth b on 11/15/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var startPoint:CGPoint!
    var numberOfBananas:Int = 0
    var bananasmoved:Int = 0
    @IBOutlet weak var monkeyIV: UIImageView!
    @IBOutlet weak var banana1_IV: UIImageView!
    @IBOutlet weak var banana2_IV: UIImageView!
    @IBOutlet weak var banana3_IV: UIImageView!
    @IBOutlet weak var banana4_IV: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Creates a new problem when button is clicked
    @IBAction func newProblem(sender: AnyObject) {
        numberOfBananas = Int(arc4random_uniform(5))
        questionLabel.text = "I Want \(numberOfBananas) Bananas"
    }
    //Checks if required bananas are moved on the monkey image.
    @IBAction func checkResult(sender: AnyObject) {
        if sqrt(pow(monkeyIV.center.x-banana1_IV.center.x, 2) + pow(monkeyIV.center.y-banana1_IV.center.y, 2)) <= 80 {
            bananasmoved += 1
        }
        if sqrt(pow(monkeyIV.center.x-banana2_IV.center.x, 2) + pow(monkeyIV.center.y-banana2_IV.center.y, 2)) <= 80  {
            bananasmoved += 1
        }
        if sqrt(pow(monkeyIV.center.x-banana3_IV.center.x, 2) + pow(monkeyIV.center.y-banana3_IV.center.y, 2)) <= 80 {
            bananasmoved += 1
        }
        if sqrt(pow(monkeyIV.center.x-banana4_IV.center.x, 2) + pow(monkeyIV.center.y-banana4_IV.center.y, 2)) <= 80  {
             bananasmoved += 1
        }
        if numberOfBananas == bananasmoved{
            self.questionLabel.text = "Thanks :)"
        }
        else{
            self.questionLabel.text = "Try Again, I want \(numberOfBananas) Bananas"
        }
       
        bananasmoved = 0
    }
    
    @IBAction func handlePan(panGR:UIPanGestureRecognizer) {
        let translation = panGR.translationInView(self.view)
        if let view = panGR.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        panGR.setTranslation(CGPointZero, inView: self.view)

    }
}

