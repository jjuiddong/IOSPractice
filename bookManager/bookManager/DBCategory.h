//
//  DBCategory.h
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 6..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DBCategory : NSManagedObject

@property (nonatomic, retain) NSNumber * categoryId;
@property (nonatomic, retain) NSString * categoryName;

+ (NSArray *)allCategories;
- (NSArray *)books;

+ (DBCategory *)createEntityWithDictionary:(NSDictionary *)aDictionary;
- (void)deleteEntity;
@end
