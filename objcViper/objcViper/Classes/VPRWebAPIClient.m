//
// Created by Raul Ascencio on 9/1/14.
// Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRWebAPIClient.h"
#import "VPRHTTPConnector.h"

@implementation VPRWebAPIClient


- (void)authenticateWithUsername:(NSString *)username
                     andPassword:(NSString *)password {
    [[[VPRHTTPConnector sharedClient] requestSerializer]
            setAuthorizationHeaderFieldWithUsername:username password:password];
}

- (void)fetchCollectionFromUrl:(NSString *)url
   withDictionaryOfParamenters:(NSDictionary *)parameters
           toCollectionHandler:(CollectionResponseHandler)collectionResponseHandler
             andErrorHanlder:(ErrorResponseHandler)errorResponseHandler
{
    [[VPRHTTPConnector sharedClient] GET:url parameters:parameters
                                 success:^(NSURLSessionDataTask *task, id responseObject) {
                                     if (collectionResponseHandler) {
                                         id <CollectionResponseDelegate> protocolizedResponseObject;
                                         protocolizedResponseObject = responseObject;
                                         // If the id conforms to protocol, we pass it to collectionResponseHandler.
                                         if ([protocolizedResponseObject
                                                 conformsToProtocol:@protocol(CollectionResponseDelegate)]) {
                                             collectionResponseHandler(protocolizedResponseObject);
                                         } else {
                                             // If the response does not conform to protocol, it's passed to
                                             // a response handler.
                                             errorResponseHandler(responseObject);
                                         }

                                     }
                                 }
                                 failure:^(NSURLSessionDataTask *task, NSError *error) {
                                     errorResponseHandler(error);
                                 }];
}

- (void)fetchUserCollectionWithParameters:(NSDictionary *)parameters
                      toCollectionHanlder:(CollectionResponseHandler)collectionResponseHandler
                          andErrorHanlder:(ErrorResponseHandler)errorResponseHandler
{
    [self fetchCollectionFromUrl:kAPIEndPointForUsers
     withDictionaryOfParamenters:parameters
             toCollectionHandler:collectionResponseHandler
                 andErrorHanlder:errorResponseHandler];
}

- (void)fetchSnippetCollectionWithParameters:(NSDictionary *)parameters
                      toCollectionHanlder:(CollectionResponseHandler)collectionResponseHandler
                          andErrorHanlder:(ErrorResponseHandler)errorResponseHandler
{
    [self fetchCollectionFromUrl:kAPIEndPointForSnippets
     withDictionaryOfParamenters:parameters
             toCollectionHandler:collectionResponseHandler
                 andErrorHanlder:errorResponseHandler];
}


@end