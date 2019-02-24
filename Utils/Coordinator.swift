//
//  Coordinator.swift
//  CoordinatorsDemo
//
//  Created by Lin Cheng on 2019/1/27.
//  Copyright © 2019 Lin Cheng. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

class BaseCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinators: [Coordinator] = []
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() { }
}
