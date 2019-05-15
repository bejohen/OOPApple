//
//  FacilitatorModel.swift
//  OOPApple
//
//  Created by Johanes Steven on 15/05/19.
//  Copyright © 2019 bejohen. All rights reserved.
//

import Foundation

class FacilitatorModel: LearnerModel {
    var facilitatorPerk: String
    
    init(facilName: String, facilAge: Int, facilHeight: Float, facilImageProfile: String, facilPerk: String) {
        facilitatorPerk = facilPerk
        super.init(learnerName: facilName, learnerAge: facilAge, height: facilHeight, imageProfile: facilImageProfile)
    }
}

