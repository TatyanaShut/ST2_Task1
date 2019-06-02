//
//  ListViewController.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "ListViewController.h"
#import "CustomView.h"
#define arrayImage [NSArray arrayWithObjects: @"1.jpeg", nil]

@interface ListViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    self.title = @"Application";
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"Close"
                                                                  style:UIBarButtonItemStylePlain
                                                                 target:self
                                                                 action:@selector(rightBarButtonItemClick:)];
    [self.navigationItem setRightBarButtonItem:rightItem];
    [self.view addSubview:_scrollView];
    
    self.navigationItem.leftBarButtonItem=nil;
    self.navigationItem.hidesBackButton=YES;
    
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
    
    
    
    
    NSMutableArray * viewArray = [[NSMutableArray alloc]init];
    const int a = 50;
    for(NSInteger i = 0; i < arrayImage.count; i++){
        
        NSString *name = [[NSString alloc]init];
        name = arrayImage[i];
        UIImage *image = [UIImage imageNamed:name];
        CustomView *view = [[CustomView alloc] initWithImage:image andDescription:@"some url"];
        [viewArray addObject:view];
        NSLog(@"%@", viewArray[i]);
        [_scrollView addSubview:viewArray[i]];
        
        view.frame = CGRectMake(0, 0+a, image.size.width/2, image.size.height/2);
        //view.center = self.view.center;
    }
}

- (void)rightBarButtonItemClick:(id)send {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
