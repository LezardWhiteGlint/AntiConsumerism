//
//  BuyIt.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/13.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct BuyIt: View {
    @EnvironmentObject var rootIsActive : RootState
    var userData = UserData()
    
    var body: some View {
        VStack() {
            Text("😄思考完毕，没有顾虑的购买吧😄")
                .font(.headline)
            Divider()
            Button(action: {
                self.userData.setCompletedTimes(completedTimes: self.userData.completedTimes + 1)
                self.userData.setTotalCost(totalCost: self.userData.totalCost + self.rootIsActive.thisTimeCost)
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

struct BuyIt_Previews: PreviewProvider {
    static var previews: some View {
        BuyIt()
        .environmentObject(RootState())
    }
}
