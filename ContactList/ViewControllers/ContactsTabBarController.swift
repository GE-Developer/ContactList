//
//  ContactsTabBarController.swift
//  ContactList
//
//  Created by M I C H A E L on 19.04.2023.
//

import UIKit

final class ContactsTabBarController: UITabBarController {

    private let persons = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers?.forEach { viewConroller in
            let contactList = viewConroller as? ContactListViewController
            let fullContactList = viewConroller as? FullContactListViewController
            contactList?.persons = persons
            fullContactList?.persons = persons
        }
    }
}
