//
//  MainCoordinator.swift
//  CoordinatorsDemo
//
//  Created by Lin Cheng on 2019/1/27.
//  Copyright © 2019 Lin Cheng. All rights reserved.
//

import UIKit

class MainCoordinator: BaseCoordinator {

    var isLogin: Bool = false
    
    override func start() {
        
        if isLogin {
            showPostLogin()
        } else {
            showPreLogin()
        }
    }
    
    func doLoginAndLogout() {
        isLogin = !isLogin
        start()
        childCoordinators.removeFirst()
    }
    
    func showPreLogin() {
        let landingVC = LandingViewController.instantiate()
        let preLoginCoor = PreLoginCoordinator(navigationController: navigationController)
        preLoginCoor.loginSuccess = doLoginAndLogout
        childCoordinators.append(preLoginCoor)
        landingVC.coordinator = preLoginCoor
        preLoginCoor.start()
    }
    
    func showPostLogin() {
        let vc = DashboardViewController.instantiate()
        let postLoginCoor = PostLoginCoordinator(navigationController: navigationController)
        postLoginCoor.logoutSuccess = doLoginAndLogout
        childCoordinators.append(postLoginCoor)
        vc.coordinator = postLoginCoor
        postLoginCoor.start()
    }
    
    
}
