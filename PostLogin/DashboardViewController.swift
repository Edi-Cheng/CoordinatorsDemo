//
//  DashboardViewController.swift
//  CoordinatorsDemo
//
//  Created by Lin Cheng on 2019/1/27.
//  Copyright © 2019 Lin Cheng. All rights reserved.
//

import UIKit



class DashboardViewController: UIViewController, Storyboarded {

    weak var coordinator: PostLoginCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationController?.navigationBar.isHidden = false
    }

    @IBAction func addCardTapped(_ sender: Any) {
        coordinator?.addCard()
    }
    
    @IBAction func transferTapped(_ sender: Any) {
        coordinator?.transferMoney()
    }
    
    
    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        coordinator?.logout()
    }
}

