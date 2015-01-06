//
//  ModelObject.m
//  TableViewDequeueTest
//
//  Created by Adam Johns on 1/6/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import "ModelObject.h"

@implementation ModelObject

- (instancetype)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle {
    self = [super init];
    
    if (self) {
        _title = title;
        _subtitle = subtitle;
    }
    
    return self;
}

@end
