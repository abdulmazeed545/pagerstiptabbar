//
//  ViewController.swift
//  pagerstiptabbar
//
//  Created by Shaik abdul mazeed on 24/04/21.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        configureButtonBar()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func configureButtonBar() {
        settings.style.buttonBarBackgroundColor = .cyan
        settings.style.buttonBarItemBackgroundColor = .white

        settings.style.buttonBarItemFont = UIFont(name: "Helvetica", size: 16.0)!
        settings.style.buttonBarItemTitleColor = .cyan
        
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0

        settings.style.selectedBarHeight = 3.0
        settings.style.selectedBarBackgroundColor = .green
        
        // Changing item text color on swipe
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .gray
            newCell?.label.textColor = .orange
        }
    }
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let one = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PurpleViewController")
        let two = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "BlueViewController")
        let three = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TableViewController")
        
      return [one, two, three]
        
    }


}

