//
//  DetailViewController.m
//  Demo
//
//  Created by why on 7/6/15.
//  Copyright (c) 2015 why. All rights reserved.
//

#import "DetailViewController.h"
#import "HWWeakTimer.h"

@interface DetailViewController ()
@property (nonatomic, weak) NSTimer *timer;

@end

@implementation DetailViewController

- (IBAction)fireButtonPressed:(id)sender {
    _timer = [HWWeakTimer scheduledTimerWithTimeInterval:3.0f block:^(id userInfo) {
        NSLog(@"%@", userInfo);
    } userInfo:@"Fire" repeats:YES];
    [_timer fire];
}

- (IBAction)invalidateButtonPressed:(id)sender {
    [_timer invalidate];
}

-(void)dealloc {
    [_timer invalidate];
    NSLog(@"%@ dealloc", NSStringFromClass([self class]));
}

@end
