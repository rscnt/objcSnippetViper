//
//  VPRManagedObject.m
//  objcViper
//
//  Created by Raul Ascencio on 8/29/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRManagedObject.h"


@implementation VPRManagedObject

@dynamic url;


+ (NSString *)entityName
{
    return NSStringFromClass(self.class);
};

-(NSString *)entityName
{
    return NSStringFromClass(self.class);
};

-(instancetype)insertNewObjectIntoContext:(NSManagedObjectContext *)context
{
    [NSEntityDescription insertNewObjectForEntityForName:[self entityName] inManagedObjectContext:context];
    return self;
};

@end
