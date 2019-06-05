//
//  LandingPage.swift
//  C1Hackathon
//
//  Created by Yannik Sood on 6/5/19.
//  Copyright © 2019 Yannik Sood. All rights reserved.
//

import Foundation
import UIKit

class LandingPage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func Confirm(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Main")
        self.present(vc, animated: false, completion: nil);
    }
    
    @IBAction func Decline(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LandingPage", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Alerter")
        self.present(vc, animated: false, completion: nil);
    }
    
}
