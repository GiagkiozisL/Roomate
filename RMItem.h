//
//  RMItem.h
//  Roomate
//
//  Created by Akis on 12/5/14.
//  Copyright (c) 2014 flowerApps. All rights reserved.
//

#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@interface RMItem : NSManagedObject

@property (nonatomic, retain) NSString *itemName;
@property (nonatomic, retain) NSString *itemKey;
@property (nonatomic, retain) UIImage *thumbnail;
@property (nonatomic, retain) NSDate *dateCreated;
@property (nonatomic) double orderingValue;

- (void) setThumbnailFromImage:(UIImage *)image;

@end
