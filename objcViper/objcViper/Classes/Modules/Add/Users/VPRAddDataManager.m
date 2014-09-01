//
//  VPRAddDataManager.m
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRAddDataManager.h"
#import "VPRManagedUser.h"

@implementation VPRAddDataManager

-(void)publishNewUserToEndPoint:(VPRUser *)user
{

};

-(void)addNewUserToDatabase:(VPRUser *)user
{
    VPRManagedUser *managedUser = [_dataStore newManagedUser];
    managedUser.username = user.username;
    managedUser.url = user.url;
    // VPRManagedUser.snippets, is a NSData, when using the VPRUser.snippets that
    // is NSArray use: +[NSKeyedUnarchived unarchiveObjectWithData:data];
    managedUser.snippets = [NSKeyedArchiver archivedDataWithRootObject:user.snippets];
    [_dataStore save];
};

@end