//
// Created by Raul Ascencio on 8/28/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRModel.h"
#import <Foundation/Foundation.h>


@interface VPRSnippet : VPRModel

@property(nonatomic, strong) NSString *url;
@property(nonatomic, strong) NSString *highlight;
@property(nonatomic, strong) NSString *owner;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *code;
@property(nonatomic, assign, getter=usingLineos) BOOL     lineos;
@property(nonatomic, strong) NSString *language;
@property(nonatomic, strong) NSString *style;

- (instancetype) initWithTitle:(NSString *)title
                       theCode:(NSString *)code
                   theLanguage:(NSString *)language
                      theStyle:(NSString *)style
                   usingLineos:(BOOL)lineos
                        theURL:(NSString *)url
                  andHighlight:(NSString *)highlight;
@end