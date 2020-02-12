//
//  UserData.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/8.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import UIKit


struct UserData {
    var completedTimes = UserDefaults.standard.integer(forKey: "completedTimes")
    var succeedTimes = UserDefaults.standard.integer(forKey: "succeedTimes")
    var totalSaved = UserDefaults.standard.integer(forKey: "totalSaved")
    var userMonthlyIncome = UserDefaults.standard.double(forKey: "userMonthlyIncome")
    
    func setCompletedTimes(completedTimes:Int){
        UserDefaults.standard.set(completedTimes, forKey: "completedTimes")
    }
    
    func setSucceedTimes(succeedTimes:Int){
        UserDefaults.standard.set(succeedTimes,forKey: "succeedTimes")
    }
    
    func setTotalSaved(totalSaved:Int){
        UserDefaults.standard.set(totalSaved,forKey: "totalSaved")
    }
    
    func setUserMonthlyIncome(userMonthlyIncome:Double){
        UserDefaults.standard.set(userMonthlyIncome,forKey: "userMonthlyIncome")
    }
}
