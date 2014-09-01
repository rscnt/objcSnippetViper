//
//  VPRAddSnippetInteractor.h
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VPRAddSnippetManager.h"

@interface VPRAddSnippetInteractor : NSObject

/*
* add snippets manager.
* */
@property (strong, nonatomic) VPRAddSnippetManager *vprAddSnippetManager;

/*
* Creates a new instance of the snippet, and stores it
* using coredata.
* */
-(void)saveNewSnippetWithTitle:(NSString *)title
                       theCode:(NSString *)code
                   theLanguage:(NSString *)language
                      theStyle:(NSString *)style
                   usingLineOS:(BOOL)lineos
                        theURL:(NSString *)url
                  andHighLight:(NSString *)highlight;
@end