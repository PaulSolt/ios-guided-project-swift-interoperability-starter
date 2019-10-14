//
//  LSIContactController.h
//  Contacts-Swift-Objc
//
//  Created by Paul Solt on 10/14/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIContactController : NSObject

@property (nonatomic, readonly) NSArray *contacts;

// readonly will not automatically create a setter `setContacts:`

@end
