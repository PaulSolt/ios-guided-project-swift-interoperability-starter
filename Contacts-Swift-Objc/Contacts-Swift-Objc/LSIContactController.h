//
//  LSIContactController.h
//  Contacts-Swift-Objc
//
//  Created by Paul Solt on 10/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

@interface LSIContactController : NSObject

// nonnull	// [Contact]
// nullable // [Contact]?
// null_unspecified   - implicitly unwrapped optional = [Contact]!
// null_resetable - UITextField.text = nil -> ""

//@property (nonatomic, readonly, nullable) NSArray<Contact *> *contacts;
@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;		// This is a computed property

// addContact
// removeContact

//- (NSArray *)contacts; // Getter

// readonly will not automatically create a setter `setContacts:`

@end
