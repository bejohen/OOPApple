//
//  ViewController.swift
//  OOPApple
//
//  Created by Johanes Steven on 15/05/19.
//  Copyright © 2019 bejohen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profleImage: UIImageView!
    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerHeightLabel: UILabel!
    
    var myLearnerInstance: LearnerModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLearnerInstance = LearnerModel(learnerName: "Steven", learnerAge: 24, height: 175.0, imageProfile: "img.jpg")
        updateUI()
    }

    func updateUI(){
        if let instance = myLearnerInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "Age : " + String(instance.age) + " years old"
            learnerHeightLabel.text = "Height : \(instance.height) cm"
        }
    }
    @IBAction func incAgeButtonPressed(_ sender: UIButton) {
        if let instance = myLearnerInstance {
            instance.increaseAge(   )
            updateUI()
        }
    }
}

