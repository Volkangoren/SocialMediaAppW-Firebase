//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Volkan on 24.12.2019.
//  Copyright © 2019 Volkan. All rights reserved.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
         try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        }catch {
            print("logout error")
        }
    }
    
}
