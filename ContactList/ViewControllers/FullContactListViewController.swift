//
//  FullContactListViewController.swift
//  ContactList
//
//  Created by M I C H A E L on 19.04.2023.
//

import UIKit

final class FullContactListViewController: UITableViewController {
    
    var persons: [Person]!
}

// MARK: - Table view data source
extension FullContactListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone.fill")
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: "envelope.fill")
            content.text = person.mail
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
