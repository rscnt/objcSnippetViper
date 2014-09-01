//
// Created by Raul Ascencio on 9/1/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollectionResponseDelegate.h"

@class VPRModel;

@interface ResponseHandlersDefinition

/*
* This block returns nothing, but receives an
* id<CollectionResponseDelegate> object, coming from a response.
* */
typedef void (^CollectionResponseHanlder)(id<CollectionResponseDelegate>);
typedef void (^ErrorResponseHanlder)(id);
typedef void (^ModelResponseHanlder)(VPRModel *);
@end