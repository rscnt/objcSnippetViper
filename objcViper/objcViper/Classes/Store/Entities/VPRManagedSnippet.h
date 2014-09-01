//
//  VPRManagedSnippet.h
//  objcViper
//
//  Created by Raul Ascencio on 8/29/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "VPRManagedObject.h"

@class VPRManagedUser;

@interface VPRManagedSnippet : VPRManagedObject

@property (nonatomic, retain) NSString * style;
@property (nonatomic, retain) NSString * language;
@property (nonatomic, retain) NSString * owner;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * code;
@property (nonatomic) BOOL lineos;
@property (nonatomic, retain) VPRManagedUser *snippetHasUser;

@end
