//
// Created by Raul Ascencio on 9/1/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import "AFNetworking.h"
#import <Foundation/Foundation.h>

#define kAPIEndPoint (@"http://127.0.0.1:8000")

@interface VPRHTTPConnector : AFHTTPSessionManager

/**
* Returns an static instance of VPRHTTPConnector.
*/
+(instancetype) sharedClient;

-(instancetype) initWithEndPointURL:(NSString *)endPointUrl;

@end