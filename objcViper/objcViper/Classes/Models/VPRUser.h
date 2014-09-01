//
// Created by Raul Ascencio on 8/28/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VPRModel.h"

@interface VPRUser : VPRModel

@property(nonatomic, strong) NSString *url;
@property(nonatomic, assign) NSString *username;
/**
 *  A list of NSStrings* with links to snippets.
 */
@property(nonatomic, assign) NSArray *snippets;

-(instancetype) initWithUrl:(NSString *)url theUsername:(NSString *)username
             andTheSnippets:(NSArray *)snippets;
@end