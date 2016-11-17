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

    @IBAction func newProblem(sender: AnyObject) {
        numberOfBananas = Int(arc4random_uniform(5))
        questionLabel.text = "I Want \(numberOfBananas) Bananas"
    }
    @IBAction func checkResult(sender: AnyObject) {
        print(monkeyIV.center)
        print(banana1_IV.center)
        print(banana2_IV.center)
        print(banana3_IV.center)
        print(banana4_IV.center)
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

