//
//  ViewController.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import UIKit

class OnboardingOneViewController: UIViewController {
    
    var onboardingOneView : OnboardingOneView?
    var onClickButtonNavigate: (()-> Void)?
    
    override func loadView() {
        self.onboardingOneView = OnboardingOneView()
        
        onboardingOneView?.setOnClickButtonNavigation {
            let coordinator = OnboardingTwoCoordinator(navigationControler: self.navigationController!)
            coordinator.start()
            
        }
        self.view = self.onboardingOneView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
