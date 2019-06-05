//
//  Alert.swift
//  C1Hackathon
//
//  Created by Yannik Sood on 6/5/19.
//  Copyright © 2019 Yannik Sood. All rights reserved.
//

import Foundation
import UIKit

class Alert: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func AlertConfirm(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "LandingPage", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    }
    @IBAction func AlertDecline(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LandingPage", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Lander")
        self.present(vc, animated: false, completion: nil);
    }
}
