//
//  CasiniViewController.swift
//  Cassini
//
//  Created by Madison Heck on 3/29/17.
//  Copyright © 2017 SebastianScales. All rights reserved.
//

import UIKit

class CasiniViewController: UIViewController {

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination as? ImageViewController){
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
    }
}


extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
                return navcon.visibleViewController ?? self
        } else {
            return self}
        }
    }
