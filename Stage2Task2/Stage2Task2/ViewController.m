//
//  ViewController.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "ViewController.h"
#import "ListViewController.h"
#import "CustomView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Application";
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"Add"
                                                                  style:UIBarButtonItemStylePlain
                                                                 target:self
                                                                 action:@selector(rightBarButtonItemClick:)];
    [self.navigationItem setRightBarButtonItem:rightItem];
    
   }
- (void)rightBarButtonItemClick:(id)send {
    ListViewController *vc = [[ListViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
