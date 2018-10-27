//
// Created by Tales Pinheiro De Andrade on 31/05/18.
// Copyright (c) 2018 talesp. All rights reserved.
//

import UIKit

protocol TabbedCoordinator {
    var tabViewController: UIViewController { get }
}

public class TabCoordinator: Coordinator {

    override public func startChild(coordinator: CoordinatorProtocol, completion: @escaping () -> Void = {}) {
        super.startChild(coordinator: coordinator, completion: completion)

        if let tabBarController = self.rootViewController as? UITabBarController,
            let coordinator = coordinator as? TabbedCoordinator {

            assert((tabBarController.viewControllers?.count ?? 0) <= 4, "`UITabBarController's supports a maximum of 5 controllers")

            if tabBarController.viewControllers == nil {
                tabBarController.viewControllers = [coordinator.tabViewController]
            } else {
                tabBarController.viewControllers?.append(coordinator.tabViewController)
            }
        }

    }
}
