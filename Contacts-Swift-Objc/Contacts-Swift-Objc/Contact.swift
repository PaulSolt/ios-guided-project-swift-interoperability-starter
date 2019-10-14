//
//  Contact.swift
//  Contacts-Swift-Objc
//
//  Created by Paul Solt on 10/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

// All Swift classes need to subclass NSObject to use in Objc

// 1. @objc for any properties / methods
// 2. Subclass NSObject
// 3. #import the special Swift header file

class Contact: NSObject {
	var name: String
	var relationship: String?
	
	// Expose any property or method to Objective-C using `@objc`
	@objc init(name: String, relationship: String?) {
		self.name = name
		self.relationship = relationship
	}
}
