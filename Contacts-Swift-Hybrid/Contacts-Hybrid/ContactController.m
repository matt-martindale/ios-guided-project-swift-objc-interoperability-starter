//
//  ContactController.m
//  Contacts-Hybrid
//
//  Created by Matthew Martindale on 8/4/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ContactController.h"
#import "Contacts_Hybrid-Swift.h"

@interface ContactController()

@property (nonatomic) NSMutableArray<Contact *> *internalsContacts;

@end

@implementation ContactController

- (instancetype)init
{
    if (self = [super init]) {
        _internalsContacts = [[NSMutableArray alloc] init];
        
        Contact *contact = [[Contact alloc] initWithName:@"Matt" relationships:@"Myself"];
        [_internalsContacts addObject:contact];
    }
    return self;
}

- (NSArray *)contacts
{
    return self.internalsContacts.copy;
}

@end
