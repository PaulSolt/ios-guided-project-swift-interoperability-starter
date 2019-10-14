//
//  LSIContactController.m
//  Contacts-Swift-Objc
//
//  Created by Paul Solt on 10/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"
#import "Contacts_Swift_Objc-Swift.h"

@interface LSIContactController () {
	
}

// Private property for internal data storage

// Lightweight generics <Type *> for an NSArray, NSMutableArray, etc
@property (nonatomic, readwrite, nonnull) NSMutableArray<Contact *> *internalContacts;

@end


@implementation LSIContactController

- (instancetype)init {
	if (self = [super init]) {
//		_contacts = [[NSArray alloc] init];
		_internalContacts = [[NSMutableArray alloc] init];	// guarentee it exists

		[self addTestData];
		
//		[self mutableMethod];
	}
	return self;
}



- (NSArray *)contacts {
//	return self.internalContacts; // NOT Safe: because this allows a caller to modify our data
	
	// We're trying to encapsulate the data inside our classes, so that you can't just
	// add things externally without using our exposed API
	
	return [self.internalContacts copy]; // mutable to immutable (NSMutableArray -> NSArray)
}

- (void)addTestData {
	
	// We're in Objective-C trying to use a Swift class (Import the
	[self.internalContacts addObject:[[Contact alloc] initWithName:@"Paul Solt" relationship:@"Me"]];
	
	// Issues: Contact init wasn't exposed to Objective-C (use @objc)
	
	[self.internalContacts addObject:[[Contact alloc] initWithName:@"Steph Solt" relationship:@"Wife"]];
	
	// Problem with NSArray / NSMutableArray and type safety
	//[self.internalContacts addObject:@"My name is Dave"];
	// With lightweight generics this fails on access: Error: Precondition failed: NSArray element failed to match the Swift Array Element type
	//	Expected Contact but found __NSCFConstantString: file
	
}

- (void)mutableMethod {
	
	// NSArray *myArray = [self contacts];
	
	
	/* What `po myArray` shows without a copy of the internalContacts (__NSArrayM)
	 <__NSArrayM 0x600001b98c60>(
	 <Contacts_Swift_Objc.Contact: 0x600001b98c00>,
	 <Contacts_Swift_Objc.Contact: 0x600001b989f0>,
	 My name is Dave
	 )
	 */
	
	/* What it looks like with an NSArray type (__NSArrayI)
	 <__NSArrayI 0x600002758720>(
	 <Contacts_Swift_Objc.Contact: 0x60000276ca20>,
	 <Contacts_Swift_Objc.Contact: 0x60000276c9f0>,
	 My name is Dave
	 )
	 */
	
}


@end
