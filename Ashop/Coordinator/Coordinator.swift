//
//  Coordinator.swift
//  Ashop
//
//  Created by Ana Brito Souza on 10/03/22.
//

import Foundation
import UIKit



protocol Coordinator : AnyObject {
    
    var navigationControler : UINavigationController {get set}
    init(navigationControler : UINavigationController)
    
    
    
}
