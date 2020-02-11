//
//  UserData.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/8.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import UIKit

//TODO: use userdefault to store data
struct UserData {
    var completedTimes = UserDefaults.standard.integer(forKey: "completedTimes")
    var succeedTimes = UserDefaults.standard.integer(forKey: "succeedTimes")
    var totalSaved = UserDefaults.standard.integer(forKey: "totalSaved")
    var userMonthlyIncome = UserDefaults.standard.integer(forKey: "userMonthlyIncome")
    
    func setCompletedTimes(completedTimes:Int){
        UserDefaults.standard.set(completedTimes, forKey: "completedTimes")
    }
}
