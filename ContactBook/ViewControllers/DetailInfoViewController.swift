//
//  ViewController.swift
//  ContactBook
//
//  Created by Maksim Grischenko on 04.05.2022.
//

import UIKit

class DetailInfoViewController: UIViewController {
    
//   MARK: IB Outlets
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
//    MARK: Public Properties
    var person: Person!
    
//    MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


}
//MARK: Private Methods
extension DetailInfoViewController {
    private func updateUI() {
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phone)"
    }
}

