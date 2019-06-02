//
//  CustomView.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

@end

@implementation CustomView

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.backgroundColor = [UIColor darkGrayColor];
    [self setView: view];
}

//- (void)drawImage:(NSString* )imageName {
//    UIImage *myImage = [UIImage imageNamed:imageName];
//    CGSize imageRect = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height);
//    
//    [myImage drawInRect:CGRectMake(0.0f, 0.0f, imageRect.width, imageRect.height)];
//    
//    
//}

@end
