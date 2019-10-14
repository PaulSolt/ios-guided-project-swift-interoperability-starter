//
//  ContactsTableViewController.swift
//  Contacts-Swift-Objc
//
//  Created by Paul Solt on 10/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
	
	// Swift and we want to import Objective-C code file
	var contactController = LSIContactController()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
//		var contacts = contactController.contacts
//		contacts?.append(Contact(name: "Bob", relationship: "No idea...."))
	}
	
	
	// MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return contactController.contacts.count
		
		// QUESTION: Why is it [Any]! instead of [AnyObject]! ?
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
		
		// By default an NSArray is imported at Any, which means we need to convert to our
		// type to use the properties
		
//		if let contact = contactController.contacts[indexPath.row] as? Contact {
//			cell.textLabel?.text = contact.name
//			cell.detailTextLabel?.text = contact.relationship
//		} else {
//			print("Error: Didn't get a contact from the Contact NSArray")
//		}
		
		let contact = contactController.contacts[indexPath.row]
		cell.textLabel?.text = contact.name
		cell.detailTextLabel?.text = contact.relationship
		
		return cell
	}
}
