//
//  VPRManagedObject.h
//  objcViper
//
//  Created by Raul Ascencio on 8/29/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface VPRManagedObject : NSManagedObject

@property (nonatomic, retain) NSString * url;

+(NSString *)entityName;

-(NSString *)entityName;

-(instancetype) insertNewObjectIntoContext:(NSManagedObjectContext *)context;
@end
