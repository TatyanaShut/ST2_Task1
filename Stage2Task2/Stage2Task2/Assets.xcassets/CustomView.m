
#import "CustomView.h"

@implementation CustomView

- (instancetype)initWithImage:(UIImage*)image andDescription:(NSString*)description {
    
    self = [super init];
    if (self) {
        self.image = image;
        self.urlDescription = description;
    }
    return self;
    
}



- (void)drawRect:(CGRect)rect{
    
    [self.image drawInRect:rect];
}

@end
