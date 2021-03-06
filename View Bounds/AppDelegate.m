//
//  AppDelegate.m
//  View Bounds
//
//  Created by Kevin Dew on 09/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;

+(void)logEvent:(const char *)functionName 
{
    NSLog(@"-- Event: %s --", functionName);    
}

+ (void)logMethod:(const char *)functionName withSender: (id)sender
{
    NSLog(@"Method: %s Sender: %@", functionName, sender);    
}

+ (void)logMethod:(const char *)functionName withSender: (id)sender withViewBounds: (CGRect)bounds andViewFrame: (CGRect)frame
{
    NSLog(@"Method: %s Sender: %@ View Bounds: %@ View Frame: %@", functionName, sender, NSStringFromCGRect(bounds), NSStringFromCGRect(frame));    
}

+ (void)logMethod:(const char *)functionName withSender: (id)sender withViewBounds: (CGRect)bounds andViewFrame: (CGRect)frame andOrientation: (UIInterfaceOrientation) orientation
{
    
    NSString *orientationString = @"Unknown";
    
    switch (orientation) {
        case UIInterfaceOrientationPortrait:
            orientationString = @"UIInterfaceOrientationPortrait";
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            orientationString = @"UIInterfaceOrientationPortraitUpsideDown";
            break;
        case UIInterfaceOrientationLandscapeLeft:
            orientationString = @"UIInterfaceOrientationLandscapeLeft";
            break;
        case UIInterfaceOrientationLandscapeRight:
            orientationString = @"UIInterfaceOrientationLandscapeRight";
            break;
    }
    
    NSLog(@"Method: %s Sender: %@ View Bounds: %@ View Frame: %@ Orientation: %@", functionName, sender, NSStringFromCGRect(bounds), NSStringFromCGRect(frame), orientationString);    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [AppDelegate logEvent:__PRETTY_FUNCTION__];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.rootViewController = [[ViewController alloc] init];
    ViewController *viewController = (ViewController *) self.window.rootViewController;
    viewController.canRotateToLandscape = YES;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    [AppDelegate logEvent:__PRETTY_FUNCTION__];
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [AppDelegate logEvent:__PRETTY_FUNCTION__];
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [AppDelegate logEvent:__PRETTY_FUNCTION__];    
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [AppDelegate logEvent:__PRETTY_FUNCTION__];
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [AppDelegate logEvent:__PRETTY_FUNCTION__];  
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
