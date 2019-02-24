//
//  LandingViewController.swift
//  CoordinatorsDemo
//
//  Created by Lin Cheng on 2019/1/27.
//  Copyright © 2019 Lin Cheng. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController, Storyboarded {

    weak var coordinator: PreLoginCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.isHidden = true
    }
    

    @IBAction func loginTapped(_ sender: Any) {
        coordinator?.showLogin()
    }
}
