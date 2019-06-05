//
//  ViewController.swift
//  C1Hackathon
//
//  Created by Yannik Sood on 6/5/19.
//  Copyright © 2019 Yannik Sood. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func faceID(_ sender: Any) {
        let context: LAContext = LAContext()
        
        if(context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)) {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Confirm Online Transaction", reply: { (wasCorrect, error ) in
                if (wasCorrect) {
                    let storyboard = UIStoryboard(name: "LandingPage", bundle: nil)
                    let vc = storyboard.instantiateViewController(withIdentifier: "Lander")
                    self.present(vc, animated: false, completion: nil);
                }
                else {
                    print("Incorrect")
                }
            })
        
        }
        else {
            print("TOUCHID NOT SUPPORTED")
        }
    
}
}

