//
//  CustomView.m
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)drawImage:(NSString* )imageName {

        UIImage *myImage = [UIImage imageNamed:imageName];
       CGSize imageRect = CGSizeMake(self.bounds.size.width, self.bounds.size.height/3);

        [myImage drawInRect:CGRectMake(0.0f, 0.0f, imageRect.width, imageRect.height)];


    }

@end
