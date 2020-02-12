//
//  INeedIt.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/11.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct INeedIt: View {
    @EnvironmentObject var cost : RootState
    @State private var itemCost = ""
    @State private var showAlert = false
    @State private var showNext = false
    @State private var subscriptionToggle = false
    @State private var subscriptionDuration = "12"
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("我需要付出的金额")
            Toggle("是每月扣费的消费", isOn: $subscriptionToggle)
            HStack(){
                Text("金额")
                TextField("输入金额", text: $itemCost)
            }
            NavigationLink("", destination: MyIncome(), isActive: $showNext)
            Button(action: {
                if let printOut = Double(self.itemCost){
                    self.cost.thisTimeCost = printOut
                    self.showNext = true
                }else{
                    self.showAlert = true
                }
            })
            {
                Text("确认")
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .cornerRadius(15)
                    .background(Color.green)
                    .font(.title)
                    //如果不是数字则弹出提示
                    .alert(isPresented: $showAlert)
                    {Alert(title: Text("仅能输入数字"), message: nil, dismissButton: .default(Text("OK")))}
            }
        }.padding()
        
    }
}

struct INeedIt_Previews: PreviewProvider {
    static var previews: some View {
        INeedIt()
    }
}
