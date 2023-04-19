//
//  ContactListViewController.swift
//  ContactList
//
//  Created by M I C H A E L on 19.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let contactViewController = segue.destination as? ContactViewController
        contactViewController?.person = persons[indexPath.row]
    }
}

// MARK: - Table view data source
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let contact = persons[indexPath.row]
        content.text = contact.fullName

        cell.contentConfiguration = content
        return cell
    }
}
