//
// Created by Raul Ascencio on 9/1/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollectionResponseDelegate.h"
#import "ResponseHandlersDefinition.h"

@class VPRSnippet;
@class VPRModel;

static const NSString* kAPIEndPointForUsers = @"/users/";
static const NSString* kAPIEndPointForSnippets = @"/snippets/";


@interface VPRWebAPIClient : NSObject

/**
* Sets the header authorization hash to the [VPRHTTPConnector sharedClient].
*/
-(void) authenticateWithUsername:(NSString *)username
                     andPassword:(NSString *)password;

/**
* Fetch and url and pass the response to a block of type CollectionResponseHandler,
* if there's an error uses the block ErrorResponseHandler.
* */
- (void)fetchCollectionFromUrl:(NSString *)url
   withDictionaryOfParamenters:(NSDictionary *)parameters
           toCollectionHandler:(CollectionResponseHanlder)collectionResponseHandler
             andErrorHanlder:(ErrorResponseHanlder)errorResponseHandler;

/**
* Fetch collection of users.
*/
- (void) fetchUserCollectionWithParameters:(NSDictionary *)parameters
                       toCollectionHanlder:(CollectionResponseHanlder)collectionResponseHandler
                           andErrorHanlder:(ErrorResponseHanlder)errorResponseHandler;

/**
* Fetch collection of snippets.
* */
- (void) fetchSnippetCollectionWithParameters:(NSDictionary *)parameters
                          toCollectionHandler:(CollectionResponseHanlder)collectionResponseHandler
                              andErrorHandler:(ErrorResponseHanlder)errorResponseHandler;


-(void) publishModelToTheServer:(VPRModel *)model andModelResponseHanlder:(ModelResponseHanlder)modelResponseHanlder;

@end