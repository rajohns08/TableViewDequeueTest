//
//  ModelObject.h
//  TableViewDequeueTest
//
//  Created by Adam Johns on 1/6/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelObject : NSObject

@property(copy, nonatomic) NSString *title;
@property(copy, nonatomic) NSString *subtitle;

- (instancetype)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle;

@end
