//
//  CustomViewController.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)drawImage:(NSString* )imageName {
    UIImage *myImage = [UIImage imageNamed:imageName];
    CGSize imageRect = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height);
    
    [myImage drawInRect:CGRectMake(0.0f, 0.0f, imageRect.width, imageRect.height)];
    
    
}


@end
