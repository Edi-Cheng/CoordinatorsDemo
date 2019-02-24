//
//  PostLoginCoordinator.swift
//  CoordinatorsDemo
//
//  Created by Lin Cheng on 1/28/19.
//  Copyright © 2019 Lin Cheng. All rights reserved.
//

import UIKit

class PostLoginCoordinator: BaseCoordinator {
    
    var logoutSuccess: (()->(Void))?

    override func start() {
        let vc = DashboardViewController.instantiate()
        vc.coordinator = self
        navigationController.setViewControllers([vc], animated: false)
    }
    
    func addCard() {
        let vc = AddCardViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func transferMoney() {
        let vc = TransferMoneyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func logout() {
        logoutSuccess?()
    }
    
}
