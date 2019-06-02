//
//  CHViewController.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//


#import "CHViewController.h"

@interface CHViewController ()

@end

@implementation CHViewController
- (void)loadView {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor darkGrayColor];
    [self setView: view];
    NSLog(@"CH! loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"CH! viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"CH! viewWillAppear frame = %@", NSStringFromCGRect(self.view.frame));
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"CH! viewWillLayoutSubviews frame = %@", NSStringFromCGRect(self.view.frame));
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"CH! viewDidLayoutSubviews frame = %@", NSStringFromCGRect(self.view.frame));
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"CH! viewDidAppear frame = %@", NSStringFromCGRect(self.view.frame));
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"CH! viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"CH! viewDidDisappear");
}


- (void)didReceiveMemoryWarning {
    NSLog(@"CH! didReceiveMemoryWarning");
}


@end

