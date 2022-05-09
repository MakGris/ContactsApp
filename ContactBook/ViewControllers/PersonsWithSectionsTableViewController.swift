//
//  PersonsWithSectionsTableViewController.swift
//  ContactBook
//
//  Created by Maksim Grischenko on 05.05.2022.
//

import UIKit

class PersonsWithSectionsTableViewController: UITableViewController {
    
    //    MARK: Public Properties
    var persons: [Person]!
    
    //    MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(CustomHeader.self, forHeaderFooterViewReuseIdentifier: "sectionHeader")
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Email", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let person = persons[indexPath.section]
            content.text = person.email
            content.image = UIImage(systemName: "tray")
            cell.contentConfiguration = content
            return cell
        default:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "PhoneNumber",
                for: indexPath
            )
            var content = cell.defaultContentConfiguration()
            let person = persons[indexPath.section]
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
            return cell
        }
        
    }
//    MARK: Table view delegate
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "sectionHeader") as! CustomHeader
        let person = persons[section]
        view.title.text = person.fullName
        view.title.font = .boldSystemFont(ofSize: 17)
        view.contentView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        return view
    }
    
}
