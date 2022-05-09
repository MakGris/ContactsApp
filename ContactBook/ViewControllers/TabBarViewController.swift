//
//  TabBarViewController.swift
//  ContactBook
//
//  Created by Maksim Grischenko on 05.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    //    MARK: Public Properties
    let persons = Person.getPerson()
    
    //    MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
}

// MARK: Private Methods
extension TabBarViewController {
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let personsVC = navigationVC.topViewController as? PersonsTableViewController {
                    personsVC.persons = persons
                } else if let personsWitnSectionsVC = navigationVC.topViewController as? PersonsWithSectionsTableViewController {
                    personsWitnSectionsVC.persons = persons
                }
            }
        }
    }
}




