//
//  VPRManagedUser.h
//  objcViper
//
//  Created by Raul Ascencio on 8/29/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "VPRManagedObject.h"

@class VPRManagedSnippet;

@interface VPRManagedUser : VPRManagedObject

@property (nonatomic, retain) NSString * username;

/**
 * VPRManagedUser.snippets, is a NSData, when using the VPRUser.snippets 
 * that is NSArray use: +[NSKeyedUnarchived unarchiveObjectWithData:data];
 * managedUser.snippets = [NSKeyedArchiver archivedDataWithRootObject:user.snippets];
 */
@property (nonatomic, retain) NSData * snippets;
@property (nonatomic, retain) VPRManagedSnippet *userHasSnippet;

@end
