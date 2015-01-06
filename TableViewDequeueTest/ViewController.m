//
//  ViewController.m
//  TableViewDequeueTest
//
//  Created by Adam Johns on 1/6/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import "ViewController.h"
#import "ModelObject.h"

@implementation ViewController {
    NSArray *array;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ModelObject *m1 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m2 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m3 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m4 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m5 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m6 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m7 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m8 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m9 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m10 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m11 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m12 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m13 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m14 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m15 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@""];
    ModelObject *m16 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@"hello"];
    ModelObject *m17 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@"hello"];
    ModelObject *m18 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@"hello"];
    ModelObject *m19 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@"hello"];
    ModelObject *m20 = [[ModelObject alloc] initWithTitle:@"test" subtitle:@"hello"];
    
    array = @[m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"MyCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    else {
        NSLog(@"row %ld not nil", (long)indexPath.row);
    }
    
    ModelObject *currentObject = array[indexPath.row];
    cell.textLabel.text = currentObject.title;
    cell.detailTextLabel.text = currentObject.subtitle;
    
    // hack to allow detail label to be shown/reused in ios8
    [cell layoutSubviews];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return array.count;
}

@end
