//
//  MenteeModel.swift
//  OOPApple
//
//  Created by Johanes Steven on 15/05/19.
//  Copyright © 2019 bejohen. All rights reserved.
//

import Foundation

class MenteeModel: LearnerModel {
    var menteeDomain: String
    
    init(menteeName: String, menteeAge: Int, menteeHeight: Float, menteeImageProfile: String, menteeDomain: String) {
        self.menteeDomain = menteeDomain
        super.init(learnerName: menteeName, learnerAge: menteeAge, height: menteeHeight, imageProfile: menteeImageProfile)
    }
}
