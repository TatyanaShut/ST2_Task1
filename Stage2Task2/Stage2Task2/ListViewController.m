//
//  ListViewController.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "ListViewController.h"
#import "CustomView.h"
//#define arrayImage [NSArray arrayWithObjects: @"1.jpeg", @"2.jpeg", @"3.jpeg", nil]

@interface ListViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    self.title = @"Application";
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"Title"
                                                                  style:UIBarButtonItemStylePlain
                                                                 target:self
                                                                 action:@selector(rightBarButtonItemClick:)];
    [self.navigationItem setRightBarButtonItem:rightItem];
    [self.view addSubview:_scrollView];

    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;

    [NSLayoutConstraint activateConstraints:
     @[
       [self.scrollView.centerXAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.centerXAnchor],
       [self.scrollView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
       [self.scrollView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor]
       ]];
    
    [NSLayoutConstraint activateConstraints:
     @[
       
       [self.scrollView.widthAnchor constraintEqualToConstant:self.view.bounds.size.width/1.2]
       ]];
    
    [_scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height*3)];
    
    
    UIView *imageView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _scrollView.frame.size.width, _scrollView.frame.size.height/3)];
    
 imageView.backgroundColor = [UIColor blueColor];

    CustomView *vc = [[CustomView alloc]init];
    [vc drawImage:@"2.jpg"];
   
    [_scrollView addSubview: vc];
   
}

- (void)rightBarButtonItemClick:(id)send {
    
}
@end
