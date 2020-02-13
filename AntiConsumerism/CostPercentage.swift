//
//  CostPercentage.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/12.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct CostPercentage: View {
    @EnvironmentObject var cost : RootState
    var userData = UserData()
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            VStack {
                if !self.cost.subscriptionToggle{
                Text("此次消费将占到我月收入的")
                Text(String(Int(self.cost.thisTimeCost/self.userData.userMonthlyIncome*100))+"%")
                .foregroundColor(.red)
                .font(.largeTitle)
                }else{
                    Text("此消费每月都会发生")
                    Text("此消费持续一年将占到我月收入的")
                    Text(String(Int(self.cost.thisTimeCost*12/self.userData.userMonthlyIncome*100))+"%")
                    .foregroundColor(.red)
                    .font(.largeTitle)
                }
            }
            
            NavigationLink("我依然想买", destination: BuyIt())
                .foregroundColor(.white)
                .frame(width: 150, height: 50)
                .cornerRadius(15)
                .background(Color.green)
                .font(.title)
            NavigationLink("我不买了", destination: Succeed())
                .foregroundColor(.white)
                .frame(width: 150, height: 50)
                .cornerRadius(15)
                .background(Color.red)
                .font(.title)
        }.padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct CostPercentage_Previews: PreviewProvider {
    static var previews: some View {
        CostPercentage()
    }
}
