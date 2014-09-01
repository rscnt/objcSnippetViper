//
//  VPRAddSnippetInteractor.m
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRAddUserInteractor.h"
#import "VPRUser.h"

@implementation VPRAddUserInteractor

-(void)saveNewUserWithUser:(NSString *)username
                    theURL:(NSString *)url
            andTheSnippets:(NSArray *)snippets
{
    VPRUser *user = [[VPRUser alloc] initWithUrl:url theUsername:username andTheSnippets:snippets];
    [self.dataManager addNewUserToDatabase:user];
}


@end
