//
//  AppDelegate.h
//  View Bounds
//
//  Created by Kevin Dew on 09/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (void)logEvent:(const char *)functionName;
+ (void)logMethod:(const char *)functionName withSender: (id)sender;
+ (void)logMethod:(const char *)functionName withSender: (id)sender withViewBounds: (CGRect)bounds andViewFrame: (CGRect)frame;

@end
