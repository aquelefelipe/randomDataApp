//
//  MainViewController.swift
//  randomDataApp
//
//  Created by Felipe Figueirôa on 04/02/19.
//  Copyright © 2019 Felipe Figueirôa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let manager = Manager()
        manager.requestUsers { (userModel, error) in
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
