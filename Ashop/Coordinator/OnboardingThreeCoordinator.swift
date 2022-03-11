//
//  OnboardingThreeCoordinator.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import Foundation
import UIKit

class OnboardingThreeCoordinator : Coordinator {
    public var navigationControler: UINavigationController
    required init(navigationControler: UINavigationController) {
        self.navigationControler = navigationControler
    }
    
    func start() {
        self.navigationControler.pushViewController(OnboardingThreeViewController(), animated: false)
    }
    
}
