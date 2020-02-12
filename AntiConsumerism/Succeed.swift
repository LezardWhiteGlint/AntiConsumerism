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
    
    var body: some View {
        VStack() {
            Text("😄反剁手成功😄")
                .font(.headline)
            Divider()
            Button(action: {
                //pop to root
                self.rootIsActive.rootIsActive = false
            })
            {
                Text("确定")
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .cornerRadius(15)
                    .background(Color.green)
                    .font(.title)
            }
        }.padding()
    }
}

struct Succeed_Previews: PreviewProvider {
    static var previews: some View {
        Succeed()
    }
}
