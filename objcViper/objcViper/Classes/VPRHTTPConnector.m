//
// Created by Raul Ascencio on 9/1/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRHTTPConnector.h"
#import "VPRSnippet.h"

@implementation VPRHTTPConnector

+ (instancetype)sharedClient {
    static VPRHTTPConnector *mVPRHTTPClient;
    static dispatch_once_t *predicate;
    _dispatch_once(predicate, ^(){
        mVPRHTTPClient = [[VPRHTTPConnector alloc] initWithEndPointURL:kAPIEndPoint];
    });
    return mVPRHTTPClient;
}

- (instancetype)initWithEndPointURL:(NSString *)endPointUrl {
    NSURL *url;
    url = [[NSURL alloc] initWithString:!endPointUrl ? kAPIEndPoint : endPointUrl];
    NSURLSessionConfiguration *urlSessionConfiguration;
    urlSessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    self = [[VPRHTTPConnector alloc] initWithBaseURL:url sessionConfiguration:urlSessionConfiguration];
    return self;
}
@end