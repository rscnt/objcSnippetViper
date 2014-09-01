//
// Created by Raul Ascencio on 9/1/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CollectionResponseDelegate <NSObject>

@property(nonatomic, assign) NSNumber *count;
@property(nonatomic, assign) NSString *next;
@property(nonatomic, assign) NSString *previous;
@property(nonatomic, assign) NSMutableArray *results;

@end