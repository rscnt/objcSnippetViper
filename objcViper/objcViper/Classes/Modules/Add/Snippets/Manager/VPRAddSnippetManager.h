//
//  VPRAddSnippetManager.h
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VPRCoreDataStore.h"
#import "VPRSnippet.h"

@interface VPRAddSnippetManager : NSObject

@property (strong, nonatomic) VPRCoreDataStore *dataStore;

/**
 *  Create and stores a new managed snippet object.
 *
 *  @param snippet A VPRSnippet instance.
 */
-(void)addNewSnippet:(VPRSnippet *)snippet;

@end
