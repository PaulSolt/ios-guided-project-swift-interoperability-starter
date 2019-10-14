//
//  LSIContactController.h
//  Contacts-Swift-Objc
//
//  Created by Paul Solt on 10/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Contacts_Swift_Objc-Swift.h" // QUESTION: Can't find header when in our header?

@class Contact; // Stops working if we rename class for Objective-C
//@class LSIContact; // Stops working if we rename class for Objective-C

NS_SWIFT_NAME(ContactController)		// We can rename a Objc class for Swift
@interface LSIContactController : NSObject

// nonnull	// [Contact]
// nullable // [Contact]?
// null_unspecified   - implicitly unwrapped optional = [Contact]!
// null_resetable - UITextField.text = nil -> ""

//@property (nonatomic, readonly, nullable) NSArray<Contact *> *contacts;
//@property (nonatomic, readonly, nonnull) NSArray<LSIContact *> *contacts;
@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;		// This is a computed property


// addContact
// removeContact

//- (NSArray *)contacts; // Getter

// readonly will not automatically create a setter `setContacts:`

@end
