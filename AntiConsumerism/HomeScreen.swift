//
//  ContentView.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/2.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI
import GoogleMobileAds

struct HomeScreen: View {
//    var userData = UserData()
    @EnvironmentObject var rootIsActive : RootState
    @State var recordActive = false
    
    var body: some View {
        VStack {
            NavigationView {
                VStack(alignment: .center, spacing: 20) {
                    HStack {
                        Spacer()
                        NavigationLink("", destination: Record(), isActive: $recordActive)
                        Button(action: {self.recordActive = true})
                        {
                            Text("历史记录")
                            .foregroundColor(.white)
                            .frame(width: 80, height: 40)
                            .cornerRadius(15)
                            .background(Color.blue)
                        }
                        
                    }.padding(.bottom)
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
            HStack {
                Spacer()
                Advertisement()
                    .frame(width:kGADAdSizeBanner.size.width , height: kGADAdSizeBanner.size.height)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(RootState())
    }
}
