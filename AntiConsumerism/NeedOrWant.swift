//
//  NeedOrWant.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/9.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI

struct NeedOrWant: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("我是需要这个东西，还是想要这个东西？")
                .font(.headline)
            Text("需要---没有它我无法生存")
                .font(.subheadline)
            Text("想要---它可以让我心理上满足")
                .font(.subheadline)
            Divider()
            VStack(alignment: .center, spacing: 20){
                NavigationLink("我需要它", destination: INeedIt())
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .cornerRadius(15)
                    .background(Color.green)
                    .font(.title)
                NavigationLink("我想要它", destination: IWantIt())
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .cornerRadius(15)
                    .background(Color.blue)
                    .font(.title)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct NeedOrWant_Previews: PreviewProvider {
    static var previews: some View {
        NeedOrWant()
    }
}
