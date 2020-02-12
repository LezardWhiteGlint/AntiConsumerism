//
//  MyIncome.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/12.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct MyIncome: View {
    var userData = UserData()
    @State private var userIncome = String(UserData().userMonthlyIncome)
    @State private var showAlert = false
    @State private var showNext = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("我的月收入")
            HStack(){
                Text("月收入")
                TextField("输入金额", text: $userIncome)
            }
            NavigationLink("", destination: CostPercentage(), isActive: $showNext)
            Button(action: {
                if let printOut = Double(self.userIncome){
                    self.userData.setUserMonthlyIncome(userMonthlyIncome: printOut)
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

struct MyIncome_Previews: PreviewProvider {
    static var previews: some View {
        MyIncome()
    }
}
