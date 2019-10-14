//
//  Contact.swift
//  Contacts-Swift-Objc
//
//  Created by Paul Solt on 10/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

class Contact {
	var name: String
	var relationship: String?
	
	init(name: String, relationship: String?) {
		self.name = name
		self.relationship = relationship
	}
}
