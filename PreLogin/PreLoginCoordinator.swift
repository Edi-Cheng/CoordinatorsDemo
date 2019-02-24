//
//  PreLoginCoordinator.swift
//  CoordinatorsDemo
//
//  Created by Lin Cheng on 1/28/19.
//  Copyright © 2019 Lin Cheng. All rights reserved.
//

import UIKit

class PreLoginCoordinator: BaseCoordinator {
    
    var loginSuccess: (()->(Void))?
    
    override func start() {
        let vc = LandingViewController.instantiate()
        vc.coordinator = self
        navigationController.setViewControllers([vc], animated: false)
    }
    
    func showLogin() {
        let vc = LoginViewController.instantiate()
        vc.coordinator = self
        navigationController.present(vc, animated: true, completion: nil)
    }
    
    func showDashboard() {
        loginSuccess?()
    }
}
