//
//  VPRAddSnippetManager.m
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRAddSnippetManager.h"
#import "VPRManagedSnippet.h"

@implementation VPRAddSnippetManager

-(void)addNewSnippet:(VPRSnippet *)snippet
{
    VPRManagedSnippet *managedSnippet = [_dataStore newManagedSnippet];
    managedSnippet.title = snippet.title;
    managedSnippet.code = snippet.code;
    managedSnippet.language = snippet.language;
    managedSnippet.style = snippet.style;
    managedSnippet.url = snippet.url;
    // managedSnippet.highlight = snippet.highlight.
    [_dataStore save];
}

@end
