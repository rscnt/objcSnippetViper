//
//  OBVIPERAppDelegate.h
//  objcViper
//
//  Created by Raul Ascencio on 8/28/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OBVIPERAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end