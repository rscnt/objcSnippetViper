//
//  VPRAddSnippetInteractor.h
//  objcViper
//
//  Created by Raul Ascencio on 9/1/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VPRAddDataManager.h"

@interface VPRAddUserInteractor : NSObject

@property (nonatomic, strong) VPRAddDataManager *dataManager;

/**
 *  Save new user with the descriptions.
 *
 *  @param username NSString username.
 *  @param url      NSString an url to the user description.
 *  @param snippets NSArray with the snippets of the user.
 */
-(void)saveNewUserWithUser:(NSString *)username
                    theURL:(NSString *)url
            andTheSnippets:(NSString *)snippets;
@end
