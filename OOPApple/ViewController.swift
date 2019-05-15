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
    var myFacilitatorInstance: FacilitatorModel?
    var myMenteeModel: MenteeModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLearnerInstance = LearnerModel(learnerName: "Steven", learnerAge: 24, height: 175.0, imageProfile: "img.jpg")
        myFacilitatorInstance = FacilitatorModel(facilName: "Steven", facilAge: 24, facilHeight: 176.0, facilImageProfile: "img.jpg", facilPerk: "what is perk?")
        myMenteeModel = MenteeModel(menteeName: "yang jelas bukan Steven", menteeAge: 1, menteeHeight: 12.1, menteeImageProfile: "img.jpg", menteeDomain: "abcd")
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

