//
//  OnboardingTwoCoordinator.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import Foundation
import UIKit

class OnboardingTwoCoordinator : Coordinator {
    public var navigationControler: UINavigationController
    required init(navigationControler: UINavigationController) {
        self.navigationControler = navigationControler
    }
    
    func start() {
        self.navigationControler.pushViewController(OnboardingTwoViewController(), animated: false)
    }
    func navigationOnboardingThree() {
        let coordinator = OnboardingThreeCoordinator(navigationControler: navigationControler)
        coordinator.start()
    }
    
    func navigationOnboardingOne() {
        let coordinator = OnboardingOneCoordinator(navigationControler: navigationControler)
        coordinator.start()
    }
    
}
