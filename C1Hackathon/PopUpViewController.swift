//
//  PopUpViewController.swift
//  C1Hackathon
//
//  Created by Yannik Sood on 6/5/19.
//  Copyright © 2019 Yannik Sood. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func Returntohome(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Main")
        self.present(vc, animated: true, completion: nil);
    }
}
