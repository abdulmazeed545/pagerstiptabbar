//
//  PurpleViewController.swift
//  pagerstiptabbar
//
//  Created by Shaik abdul mazeed on 24/04/21.
//

import UIKit
import XLPagerTabStrip

class PurpleViewController: UIViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
extension PurpleViewController: IndicatorInfoProvider{
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Purple")
    }
    
}
