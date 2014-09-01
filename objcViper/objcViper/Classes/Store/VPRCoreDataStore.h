//
//  VPRCoreDataStore.h
//  objcViper
//
//  Created by Raul Ascencio on 8/29/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

@import CoreData;
@import Foundation;

@class VPRManagedSnippet;
@class VPRManagedUser;

@interface VPRCoreDataStore : NSObject

/**
 *  Creates an instance of VPRManagedSnippet object, to be
 *  used to create a new registry in the db.
 *
 *  @return VPRManagedSnippet clean instance.
 */
-(VPRManagedSnippet *)newManagedSnippet;


/**
 *  Creates an instance of VPRManagedUser, to be used
 *  to create a new registry in the db.
 *
 *  @return VPRManagedUser clean instance.
 */
-(VPRManagedUser *)newManagedUser;

/**
 * readonly instance of NSManagedObjectContext.
 */
@property (nonatomic, strong, readonly) NSManagedObjectContext *managedObjectContext;

/**
 *  Commits changes to the managedObjectContext.
 */
-(void) save;

@end
