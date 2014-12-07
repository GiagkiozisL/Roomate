//
//  RMItemstore.h
//  Roomate
//
//  Created by Akis on 12/7/14.
//  Copyright (c) 2014 flowerApps. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RMItem;

@interface RMItemstore : NSObject

+ (instancetype)sharedStore;
- (RMItem *)createItem;
- (void)removeItem:(RMItem *)item;
- (void)moveItemFromIndex:(NSInteger)fromIndex
                  toIndex:(NSInteger)toIndex;
- (BOOL)saveChanges;

@end
