//
//  Succeed.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/11.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct Succeed: View {
    @EnvironmentObject var rootIsActive : RootState
    var userData = UserData()
    
    var body: some View {
        VStack() {
            Text("😄反剁手成功😄")
                .font(.headline)
            Divider()
            Button(action: {
                self.userData.setCompletedTimes(completedTimes: self.userData.completedTimes + 1)
                self.userData.setSucceedTimes(succeedTimes: self.userData.succeedTimes + 1)
                self.userData.setTotalCost(totalCost: self.userData.totalCost + self.rootIsActive.thisTimeCost)
                self.userData.setTotalSaved(totalSaved: self.userData.totalSaved + self.rootIsActive.thisTimeCost)
                //pop to root
                self.rootIsActive.rootIsActive = false
            })
            {
                Text("记录这次思考")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .cornerRadius(15)
                    .background(Color.green)
                    .font(.title)
            }
        }.padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct Succeed_Previews: PreviewProvider {
    static var previews: some View {
        Succeed()
        .environmentObject(RootState())
    }
}
