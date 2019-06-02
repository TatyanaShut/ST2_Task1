//
//  ListViewController.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "ListViewController.h"
#import "CustomView.h"



@interface ListViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) NSDictionary* imagesDiscription;
@property (weak, nonatomic) UILabel* descriptionLabel;

@end

@implementation ListViewController

- (void)viewDidLoad {
    self.title = @"Select Item";
    
    self.imagesDiscription = @{@"1.jpg" : @"url1",
                               @"2.jpg" : @"url2",
                               @"3.jpg" : @"url3",
                               @"4.jpg" : @"url4",
                               @"5.jpg" : @"url5",
                               @"6.jpg" : @"url6"
                               };
    
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
       
       [self.scrollView.widthAnchor constraintEqualToConstant:self.view.bounds.size.width]
       ]];
    
    [_scrollView setContentSize:CGSizeMake(0, self.view.frame.size.height*3)];
    
    
    
    NSInteger counter = 0;
    NSInteger distance = self.view.frame.size.height/3;
    for(id i in self.imagesDiscription){
        
        
        UIImage *image = [UIImage imageNamed:i];
        CGRect ImageRect = CGRectMake(self.view.frame.size.width/5, counter * distance + 15, image.size.width, image.size.height);
        CGRect rectForDescription = CGRectMake(self.view.frame.size.width/5,counter * distance - 15 + image.size.height, image.size.width, 30);
        CustomView *view = [[CustomView alloc] initWithImage:image andDescription:[self.imagesDiscription objectForKey:i]];
        
        UILabel* descriptionLabel = [[UILabel alloc] initWithFrame:rectForDescription];
        
        descriptionLabel.textColor = [UIColor redColor];
        descriptionLabel.text = [self.imagesDiscription objectForKey:i];
        
        
        UITapGestureRecognizer *singleFingerTap =
        [[UITapGestureRecognizer alloc] initWithTarget:self
                                                action:@selector(handleSingleTap:)];
        [view addGestureRecognizer:singleFingerTap];
        [_scrollView addSubview:view];
        [_scrollView addSubview:descriptionLabel];
        view.frame = ImageRect;
        
        counter++;
    }
}

- (void)rightBarButtonItemClick:(id)send {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
