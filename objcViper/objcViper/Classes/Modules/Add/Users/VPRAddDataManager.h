//
//  VPRAddDataManager.h
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VPRCoreDataStore.h"
#import "VPRUser.h"

@interface VPRAddDataManager : NSObject

@property (nonatomic, strong) VPRCoreDataStore *dataStore;

/**
 *  Creates and save a new managed object user.
 */
-(void)addNewUserToDatabase:(VPRUser *)user;

@end
