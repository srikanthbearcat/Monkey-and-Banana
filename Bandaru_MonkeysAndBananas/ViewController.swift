//
//  ViewController.swift
//  Bandaru_MonkeysAndBananas
//
//  Created by sreekanth b on 11/15/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monkeyIV: UIImageView!
    @IBOutlet weak var banana_1IV: UIImageView!
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
        questionLabel.text = "I Want 1 Banana"
    }

}

