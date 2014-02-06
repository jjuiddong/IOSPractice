//
//  DBBook.h
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 6..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "DBAuthor.h"
#import "DBCategory.h"


@interface DBBook : NSManagedObject

@property (nonatomic, retain) NSNumber * authorId;
@property (nonatomic, retain) NSString * bookDescription;
@property (nonatomic, retain) NSNumber * bookId;
@property (nonatomic, retain) NSNumber * categoryId;
@property (nonatomic, retain) NSString * imageName;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * year;

- (DBAuthor *)author;
- (DBCategory *)category;
+ (NSArray *)allBooks;
+ (NSArray *)allFavoriteBooks;
+ (DBBook *)createEntityWithDictionary:(NSDictionary *)aDictionary;
- (void)deleteEntity;
@end
