//
//  ListViewController.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "ListViewController.h"
#import "CustomView.h"
#import "ViewController.h"



@interface ListViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) NSDictionary* imagesDiscription;
@property (weak, nonatomic) UILabel* descriptionLabel;
@property (weak, nonatomic) CustomView* customView;


@end

@implementation ListViewController

- (void)viewDidLoad {
    self.title = @"Select Item";
    
    self.imagesDiscription = @{@"1.jpg" : @"https://url-image1",
                               @"2.jpg" : @"https://url-image2",
                               @"3.jpg" : @"https://url-image3",
                               @"4.jpg" : @"https://url-image4",
                               @"5.jpg" : @"https://url-image5",
                               @"6.jpg" : @"https://url-image6",
                               @"7.jpg" : @"https://url-image7",
                               @"8.jpg" : @"https://url-image8",
                               @"9.jpg" : @"https://url-image9",
                               @"10.jpg": @"https://url-image10",
                               @"11.jpg": @"https://url-image11",
                               @"12.jpg": @"https://url-image12",
                               @"13.jpg": @"https://url-image13",
                               @"14.jpg": @"https://url-image14",
                               @"15.jpg": @"https://url-image15",
                               @"16.jpg": @"https://url-image16",
                               @"17.jpg": @"https://url-image17",
                               @"18.jpg": @"https://url-image18",
                               @"19.jpg": @"https://url-image19",
                               @"20.jpg": @"https://url-image20",
                               @"21.jpg": @"https://url-image21",
                               @"22.jpg": @"https://url-image22",
                               @"23.jpg": @"https://url-image23",
                               @"24.jpg": @"https://url-image24",
                               @"25.jpg": @"https://url-image25",
                               @"26.jpg": @"https://url-image26",
                               @"27.jpg": @"https://url-image27",
                               @"28.jpg": @"https://url-image28",
                               @"29.jpg": @"https://url-image29",
                               @"30.jpg": @"https://url-image30"
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
    
    [_scrollView setContentSize:CGSizeMake(0, self.view.frame.size.height*10)];
    
    
    NSInteger counter = 0;
    NSInteger distance = self.view.frame.size.height/3;
    
    for(id i in self.imagesDiscription){
        
        UIImage *image = [UIImage imageNamed:i];
        CGRect imageRect = CGRectMake(self.view.frame.size.width/5, counter * distance + 15, image.size.width, image.size.height);
        CGRect descriptionRect = CGRectMake(self.view.frame.size.width/5,counter * distance - 15 + image.size.height, image.size.width, 30);
        CustomView *view = [[CustomView alloc] initWithImage:image andDescription:[self.imagesDiscription objectForKey:i]];
        UILabel* descriptionLabel = [[UILabel alloc] initWithFrame:descriptionRect];
        
        descriptionLabel.textColor = [UIColor redColor];
        descriptionLabel.text = [self.imagesDiscription objectForKey:i];
        UITapGestureRecognizer *singleFingerTap =
        [[UITapGestureRecognizer alloc] initWithTarget:self
                                                action:@selector(handleSingleTap:)];
        [view addGestureRecognizer:singleFingerTap];
        [_scrollView addSubview:view];
        [_scrollView addSubview:descriptionLabel];
        view.frame = imageRect;
        
        counter++;
    }
}

- (void)rightBarButtonItemClick:(id)send {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
    UIView* chosenView = [self.scrollView hitTest:[recognizer locationInView:self.scrollView] withEvent:nil];
    self.customView = [self.scrollView.subviews objectAtIndex:[self.scrollView.subviews indexOfObject:chosenView]];
    ViewController* vc = [self.navigationController.viewControllers objectAtIndex:0];
    vc.registeredCustomView = self.customView;
    vc.title = self.customView.urlDescription;
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}
@end
