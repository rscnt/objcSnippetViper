//
// Created by Raul Ascencio on 8/28/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRUser.h"


@implementation VPRUser

-(instancetype)initWithUrl:(NSString *)url theUsername:(NSString *)username andTheSnippets:(NSArray *)snippets {
    self = [super init];
    if (self) {
        self.url = url;
        self.username = username;
        self.snippets = snippets;
    }
    return self;
}

@end