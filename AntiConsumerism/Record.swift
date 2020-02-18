//
//  Record.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/18.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct Record: View {
    var userData = UserData()
    @EnvironmentObject var rootIsActive : RootState
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(){
                Text("使用次数")
                Spacer()
                Text(String(self.userData.completedTimes))
            }.padding()
            Divider()
            HStack(){
                Text("反剁手成功次数")
                Spacer()
                Text(String(self.userData.succeedTimes))
            }.padding()
            Divider()
            HStack(){
                Text("总消费")
                Spacer()
                Text(String(self.userData.totalCost))
            }.padding()
            Divider()
            HStack(){
                Text("成功节省")
                Spacer()
                Text(String(self.userData.totalSaved))
            }.padding()
            
        }
    }
}

struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
        .environmentObject(RootState())
    }
}
