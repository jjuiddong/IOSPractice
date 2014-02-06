//
//  DBCategory.m
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 6..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "DBCategory.h"
#import "DBBook.h"


@implementation DBCategory

@dynamic categoryId;
@dynamic categoryName;

+ (NSArray *)allCategories {
    return [DBCategory MR_findAll];
}

- (NSArray *)books {
    return [DBBook MR_findByAttribute:@"categoryId" withValue:self.categoryId];
}

+ (DBCategory *)createEntityWithDictionary:(NSDictionary *)aDictionary {
    // Get the local context
    NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
    
    // Create a new Book in the local context
    DBCategory *newEntity= [DBCategory MR_createInContext:localContext];
    
    // Set the properties
    [newEntity setValuesForKeysWithDictionary:aDictionary];
    NSInteger passedId = [[aDictionary objectForKey:@"categoryId"] intValue];
    if (passedId == 0) {
        NSInteger maxId = [[DBBook MR_aggregateOperation:@"max:" onAttribute:@"categoryId" withPredicate:nil inContext:localContext] intValue];
        newEntity.categoryId = [NSNumber numberWithInt:(maxId + 1)];
    }
    
    // Save the modification in the local context
//    [localContext MR_save];
    
    return newEntity;
}

- (void)deleteEntity {
    // Get the local context
    NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
    
    // Delete the book
    [self MR_deleteInContext:localContext];
    
    // Save the modification in the local context
//    [localContext MR_save];
}

@end
