//
//  LearnerModel.swift
//  OOPApple
//
//  Created by Johanes Steven on 15/05/19.
//  Copyright © 2019 bejohen. All rights reserved.
//

import Foundation

class LearnerModel {
    //properties
    var name: String
    var age: Int
    var height: Float
    var imageProfile: String?
    
    init(learnerName: String, learnerAge: Int, height: Float, imageProfile: String) {
        name = learnerName
        age = learnerAge
        self.height = height
        self.imageProfile = imageProfile
    }
    
    func increaseAge(){
        age += 1
    }
}
