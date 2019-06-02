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
    
    UIPanGestureRecognizer *recognizerPan =
    [[UIPanGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handlePan:)];
    [self.view addGestureRecognizer:recognizerPan];
    
    UITapGestureRecognizer* recognizerTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:recognizerTap];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.view addSubview:self.registeredCustomView];
    self.registeredCustomView.frame = CGRectMake(self.view.center.x - 75, self.view.center.y - 75, 150, 150);
    
}

- (void)rightBarButtonItemClick:(id) sender {
    ListViewController* lVc = [[ListViewController alloc] init];
    [self.navigationController pushViewController:lVc animated:YES];
}
- (void) handlePan:(UIPanGestureRecognizer*) recognizer {
    self.title = self.registeredCustomView.urlDescription;
    UIView* view = [self.view hitTest:[recognizer locationInView:self.view] withEvent:nil];
    if (![view isEqual:self.view]) {
        
        CGPoint translation = [recognizer translationInView:view.superview];
        CGPoint location = [recognizer locationInView:view.superview];
        if (recognizer.state == UIGestureRecognizerStateBegan) {
            view.center = location;
        }
        view.center = CGPointMake(view.center.x + translation.x, view.center.y +translation.y);
        
        [recognizer setTranslation:CGPointZero inView:view.superview];
    }
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer {
    
}
@end

