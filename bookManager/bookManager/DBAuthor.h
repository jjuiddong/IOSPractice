//
//  DBAuthor.h
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 6..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DBAuthor : NSManagedObject

@property (nonatomic, retain) NSNumber * authorId;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;

+ (NSArray *)allAuthors;
- (NSArray *)books;
- (NSString *)fullName;

+ (DBAuthor *)createEntityWithDictionary:(NSDictionary *)aDictionary;
- (void)deleteEntity;
@end
