//
//  ContactController.h
//  Contacts-Hybrid
//
//  Created by Matthew Martindale on 8/4/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

//NS_ASSUME_NONNULL_BEGIN

@interface ContactController : NSObject

@property (nonatomic, readonly, copy, nonnull) NSArray<Contact *> *contacts;

- (nonnull Contact *)contactAtIndex: (NSInteger)index;

@property (nonatomic, readonly) NSInteger contactCount;

@end

//NS_ASSUME_NONNULL_END
