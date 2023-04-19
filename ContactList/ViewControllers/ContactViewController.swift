//
//  ContactViewController.swift
//  ContactList
//
//  Created by M I C H A E L on 19.04.2023.
//

import UIKit

final class ContactViewController: UIViewController {
    
    @IBOutlet private var phoneLabel: UILabel!
    @IBOutlet private var mailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        
        phoneLabel.text = "Phone: " + person.phone
        mailLabel.text = "Mail: " + person.mail
    }
}
