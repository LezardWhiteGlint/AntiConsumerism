//
//  RootState.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/11.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import SwiftUI
import Combine

final class RootState:ObservableObject {
    @Published var rootIsActive = false
    @Published var thisTimeCost = 0.0
    @Published var subscriptionToggle = false
}
