//
//  BasicView.m
//  View Bounds
//
//  Created by Kevin Dew on 09/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BasicView.h"
#import "AppDelegate.h"

@implementation BasicView

@synthesize presentButton = _presentButton;
@synthesize dismissButton = _dismissButton;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.presentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.presentButton.frame = CGRectMake(100, 10, 80, 40);
        self.dismissButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.dismissButton.frame = CGRectMake(200, 10, 80, 40);
        [self.presentButton setTitle:@"Present" forState:UIControlStateNormal];
        [self.dismissButton setTitle:@"Dismiss" forState:UIControlStateNormal];
        [self addSubview:self.presentButton];
        [self addSubview:self.dismissButton];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)layoutSubviews 
{
//    CGRect frame = self.dismissButton.frame;    
//    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
//    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown) {
//        self.dismissButton.frame = CGRectMake(self.bounds.size.width - frame.size.width, self.bounds.size.height - frame.size.height, frame.size.width, frame.size.height);
//    } else {
//        self.dismissButton.frame = CGRectMake(200, 10, frame.size.width, frame.size.height);        
//    }
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.bounds andViewFrame:self.frame];

}

@end
