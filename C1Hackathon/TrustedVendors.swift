//
//  TrustedVendors.swift
//  C1Hackathon
//
//  Created by Yannik Sood on 6/5/19.
//  Copyright © 2019 Yannik Sood. All rights reserved.
//

import Foundation
import UIKit
class TrustedVendors: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setToolbarHidden(false, animated: true)
        
    }
    
    @IBAction func Exit(_ sender: Any) {let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Main")
        self.present(vc, animated: false, completion: nil);
        
    }
}
