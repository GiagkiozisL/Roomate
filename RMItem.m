//
//  RMItem.m
//  Roomate
//
//  Created by Akis on 12/5/14.
//  Copyright (c) 2014 flowerApps. All rights reserved.
//

#import "RMItem.h"

@implementation RMItem

@dynamic itemKey;
@dynamic itemName;
@dynamic thumbnail;
@dynamic dateCreated;
@dynamic orderingValue;

- (void)setThumbnailFromImage:(UIImage *)image {
    
    CGSize originalImageSize = image.size;
    CGRect newRect = CGRectMake(0, 0, 40, 40);
    
    float ratio = MAX(newRect.size.width/originalImageSize.width,
                      newRect.size.height/originalImageSize.height);
    UIGraphicsBeginImageContextWithOptions(newRect.size, NO, 0.0);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:newRect
                                                    cornerRadius:5.0];
    [path addClip];
    
    CGRect projectRect;
    projectRect.size.width = ratio * originalImageSize.width;
    projectRect.size.height = ratio * originalImageSize.height;
    projectRect.origin.x = (newRect.size.width - projectRect.size.width) / 2.0;
    projectRect.origin.y = (newRect.size.height - projectRect.size.height) / 2.0;
    
    [image drawInRect:projectRect];
    
    UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
    self.thumbnail = smallImage;
    
    UIGraphicsEndImageContext();
    
}

- (void)awakeFromInsert {
    [super awakeFromInsert];
    
    
}

@end
