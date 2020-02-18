//
//  Advertisement.swift
//  AntiConsumerism
//
//  Created by Lezardvaleth on 2020/2/18.
//  Copyright © 2020 Lezardvaleth. All rights reserved.
//

import GoogleMobileAds
import SwiftUI
import UIKit

struct Advertisement:UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> UIViewController {
        let view = GADBannerView(adSize: kGADAdSizeBanner)
        let viewController = UIViewController()
        view.adUnitID = "ca-app-pub-3940256099942544/2934735716"//test id, replace when submit for review or after review
        view.rootViewController = viewController
        viewController.view.addSubview(view)
        viewController.view.frame = CGRect(origin: .zero, size: kGADAdSizeBanner.size)
        view.load(GADRequest())
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        //
    }
}




