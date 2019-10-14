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
@property (nonatomic, readwrite) NSMutableArray *internalContacts;

@end


@implementation LSIContactController

- (instancetype)init {
	if (self = [super init]) {
//		_contacts = [[NSArray alloc] init];
		_internalContacts = [[NSMutableArray alloc] init];

		[self addTestData];
	}
	return self;
}

- (NSArray *)contacts {
	return [self.internalContacts copy]; // mutable to immutable (NSMutableArray -> NSArray)
}

- (void)addTestData {
	
	// We're in Objective-C trying to use a Swift class (Import the
	[self.internalContacts addObject:[[Contact alloc] initWithName:@"Paul Solt" relationship:@"Me"]];
	
	// Issues: Contact init wasn't exposed to Objective-C (use @objc)
	
	[self.internalContacts addObject:[[Contact alloc] initWithName:@"Steph Solt" relationship:@"Wife"]];
	
}


@end
