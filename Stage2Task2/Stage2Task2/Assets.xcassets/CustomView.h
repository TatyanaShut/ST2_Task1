//
//  CustomView.h
//  Stage2Task2
//
//  Created by Tatyana Shut on 01.06.2019.
//  Copyright © 2019 Tatyana Shut. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomView : UIView

@property (strong, nonatomic ) UIImage* image;
@property (strong, nonatomic ) NSString* urlDescription;

- (instancetype)initWithImage:(UIImage*)image andDescription:(NSString*)description;

@end

