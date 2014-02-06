//
//  DBBook.m
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 6..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "DBBook.h"


@implementation DBBook

@dynamic authorId;
@dynamic bookDescription;
@dynamic bookId;
@dynamic categoryId;
@dynamic imageName;
@dynamic title;
@dynamic year;

- (DBAuthor *)author {
    return [DBAuthor MR_findFirstByAttribute:@"authorId" withValue:self.authorId];
}

- (DBCategory *)category {
    return [DBCategory MR_findFirstByAttribute:@"categoryId" withValue:self.categoryId];
}

+ (NSArray *)allBooks {
    return [DBBook MR_findAllSortedBy:@"title" ascending:YES];
}

+ (NSArray *)allFavoriteBooks {
    return [DBBook MR_findByAttribute:@"isFavorite" withValue:[NSNumber numberWithBool:YES]]; 
}

+ (DBBook *)createEntityWithDictionary:(NSDictionary *)aDictionary {
    // Get the local context
    NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
    
    // Create a new Book in the local context
    DBBook *newEntity = [DBBook MR_createInContext:localContext];
    
    // Set the properties
    [newEntity setValuesForKeysWithDictionary:aDictionary];
    NSInteger passedId = [[aDictionary objectForKey:@"bookId"] intValue];
    if (passedId == 0) {
        NSInteger maxId = [[DBBook MR_aggregateOperation:@"max:" onAttribute:@"bookId" withPredicate:nil inContext:localContext] intValue];
        newEntity.bookId = [NSNumber numberWithInt:(maxId + 1)];
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
