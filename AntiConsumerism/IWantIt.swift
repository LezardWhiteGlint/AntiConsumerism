//
//  IWantIt.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/11.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct IWantIt: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("我有没有其他更重要的地方需要钱？")
                .font(.headline)
            Text("房租，水电费，食物的开支是否留够了？")
                .font(.subheadline)
            Divider()
            NavigationLink("我依然想买", destination: INeedIt())
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
    }
}

struct IWantIt_Previews: PreviewProvider {
    static var previews: some View {
        IWantIt()
    }
}
