//
// Created by Raul Ascencio on 8/28/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRSnippet.h"


@implementation VPRSnippet

- (instancetype) initWithTitle:(NSString *)title theCode:(NSString *)code theLanguage:(NSString *)language
                      theStyle:(NSString *)style usingLineos:(BOOL)lineos theURL:(NSString *)url
                  andHighlight:(NSString *)highlight;
{
    self = [super  init];
    if (self) {
        self.title = title;
        self.code = code;
        self.language = language;
        self.style = style;
        self.lineos = lineos;
        self.url = url;
        self.highlight = highlight;
    }
    return self;
}
@end