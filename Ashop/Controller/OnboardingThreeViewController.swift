//
//  OnboardingThreeViewController.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import UIKit

class OnboardingThreeViewController: UIViewController {

    var onboardingThreeView : OnboardingThreeView?
    
    override func loadView() {
        self.onboardingThreeView = OnboardingThreeView()
        self.view = self.onboardingThreeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

