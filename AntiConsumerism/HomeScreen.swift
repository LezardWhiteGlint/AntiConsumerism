//
//  ContentView.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/2.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    var userData = UserData()
    @EnvironmentObject var rootIsActive : RootState
    
    var body: some View {
        VStack {
            NavigationView {
                VStack(alignment: .center, spacing: 20) {
                    Text("本APP可以引导你对自己即将到来的消费进行理性思考，一定程度上减少不必要的浪费")
                        .font(.headline)
                    Divider()
                    NavigationLink("开始", destination: NeedOrWant(), isActive: self.$rootIsActive.rootIsActive)
                        .isDetailLink(false)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .cornerRadius(15)
                        .background(Color.green)
                        .font(.title)
                }.padding()
            }
            Spacer()
            Text("Adevertisment placeholder")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
