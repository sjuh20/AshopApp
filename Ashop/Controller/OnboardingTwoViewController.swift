//
//  OnboardingTwoViewController.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import UIKit

class OnboardingTwoViewController: UIViewController {

    var onboardingTwoView : OnboardingTwoView?
    var onClickButtonNavigate: (()-> Void)?
    
    override func loadView() {
        self.onboardingTwoView = OnboardingTwoView()
        
        onboardingTwoView?.setOnClickButtonNavigation {
            let coordinator = OnboardingThreeCoordinator(navigationControler: self.navigationController!)
            coordinator.start()
            
        }
        self.view = self.onboardingTwoView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}
