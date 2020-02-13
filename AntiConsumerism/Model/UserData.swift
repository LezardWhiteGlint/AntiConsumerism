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
    var totalSaved = UserDefaults.standard.double(forKey: "totalSaved")
    var totalCost = UserDefaults.standard.double(forKey: "totalCost")
    var userMonthlyIncome = UserDefaults.standard.double(forKey: "userMonthlyIncome")
    
    func setCompletedTimes(completedTimes:Int){
        UserDefaults.standard.set(completedTimes, forKey: "completedTimes")
    }
    
    func setSucceedTimes(succeedTimes:Int){
        UserDefaults.standard.set(succeedTimes,forKey: "succeedTimes")
    }
    
    func setTotalSaved(totalSaved:Double){
        UserDefaults.standard.set(totalSaved,forKey: "totalSaved")
    }
    
    func setTotalCost(totalCost:Double){
        UserDefaults.standard.set(totalCost,forKey: "totalCost")
    }
    
    func setUserMonthlyIncome(userMonthlyIncome:Double){
        UserDefaults.standard.set(userMonthlyIncome,forKey: "userMonthlyIncome")
    }
}
