//
//  VPRCoreDataStore.m
//  objcViper
//
//  Created by Raul Ascencio on 8/29/14.
//  Copyright (c) 2014 rscnt. All rights reserved.
//

#import "VPRCoreDataStore.h"
#import "VPRManagedUser.h"
#import "VPRManagedSnippet.h"

@interface VPRCoreDataStore ()

@property (nonatomic, strong) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, strong) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
           

@end

// Constants
// NSString * const VPRCoreDataStoreDidSomethingNotification = @"VPRCoreDataStoreDidSomething";
// static NSString * const kSomeLocalConstant = @"SomeValue";

@implementation VPRCoreDataStore

#pragma mark -
#pragma mark Static methods

#pragma mark -
#pragma mark Init and dealloc

- (instancetype)init {
    if ((self = [super init])) {
        // Implement stack controll.
        _managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];
        _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.managedObjectModel];
        NSError *error = nil;
        NSURL *applicationsDocumentDirectory = [[[NSFileManager defaultManager]
                                                 URLsForDirectory:NSDocumentDirectory
                                                 inDomains:NSUserDomainMask] lastObject];
        NSURL *urlForDb = [applicationsDocumentDirectory URLByAppendingPathComponent:@"snippets.sqlite.db"];
        NSDictionary *persistenceOptions =
        [NSDictionary dictionaryWithObjects:@[[NSNumber numberWithBool:YES],
                                              [NSNumber numberWithBool:YES]]
                                    forKeys:@[NSMigratePersistentStoresAutomaticallyOption,
                                              NSInferMappingModelAutomaticallyOption]];
        [_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                                  configuration:nil
                                                            URL:urlForDb
                                                        options:persistenceOptions
                                                          error:&error];
        _managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        _managedObjectContext.persistentStoreCoordinator = _persistentStoreCoordinator;
        _managedObjectContext.undoManager = nil;
    }
    return self;
}

- (void)dealloc {
}

#pragma mark -
#pragma mark Properties

#pragma mark -
#pragma mark Public methods

-(VPRManagedSnippet *)newManagedSnippet
{
    NSEntityDescription *entity = [[_managedObjectModel entitiesByName] objectForKey:[VPRManagedSnippet entityName]];
    VPRManagedSnippet *managedSnippet = [[VPRManagedSnippet alloc] initWithEntity:entity
                                         insertIntoManagedObjectContext:_managedObjectContext];
    return managedSnippet;
};

-(VPRManagedUser *)newManagedUser
{
    NSEntityDescription *entity = [[_managedObjectModel entitiesByName] objectForKey:[VPRManagedUser entityName]];
    VPRManagedUser *managedUser = [[VPRManagedUser alloc] initWithEntity:entity
                                         insertIntoManagedObjectContext:_managedObjectContext];
    return managedUser;
};

-(void) save
{
    [_managedObjectContext save:NULL];
}

#pragma mark -
#pragma mark Private methods

#pragma mark - 
#pragma mark Delegate methods

#pragma mark - 
#pragma mark Event handlers

@end
