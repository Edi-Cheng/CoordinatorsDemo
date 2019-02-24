//
//  LoginViewController.swift
//  CoordinatorsDemo
//
//  Created by Lin Cheng on 2019/1/27.
//  Copyright © 2019 Lin Cheng. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, Storyboarded {

    weak var coordinator: PreLoginCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doLoginTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        coordinator?.showDashboard()
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
