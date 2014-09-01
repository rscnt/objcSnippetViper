//
//  VPRAddSnippetInteractor.m
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRAddSnippetInteractor.h"
#import "VPRSnippet.h"

@implementation VPRAddSnippetInteractor

-(VPRAddSnippetManager *)vprAddSnippetManager
{
    if (!_vprAddSnippetManager){
        _vprAddSnippetManager = [[VPRAddSnippetManager alloc]  init];
    }
    return _vprAddSnippetManager;
}

-(void)saveNewSnippetWithTitle:(NSString *)title
                       theCode:(NSString *)code
                   theLanguage:(NSString *)language
                      theStyle:(NSString *)style
                   usingLineOS:(BOOL)lineos
                        theURL:(NSString *)url
                  andHighLight:(NSString *)highlight
{
    VPRSnippet *snippet;
    snippet = [[VPRSnippet alloc] initWithTitle:title theCode:code theLanguage:language theStyle:style usingLineos:lineos theURL:url andHighlight:highlight];
    [self.vprAddSnippetManager addNewSnippet:snippet];
}
@end
