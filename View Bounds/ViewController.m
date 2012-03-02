//
//  RootViewController.m
//  View Bounds
//
//  Created by Kevin Dew on 09/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BasicView.h"
#import "AppDelegate.h"

@implementation ViewController
@synthesize canRotateToLandscape = _canRotateToLandscape;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    
    self.view = [[BasicView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = [[BasicView alloc] init];
    self.view.backgroundColor = [UIColor redColor];
    BasicView* basicView = (BasicView*) self.view;
    [basicView.presentButton addTarget:self action:@selector(presentPressed) forControlEvents:UIControlEventTouchUpInside];
    [basicView.dismissButton addTarget:self action:@selector(dismissPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}

- (void)viewWillAppear:(BOOL)animated
{
    BasicView *basicView = (BasicView *) self.view;
    CGRect frame = basicView.dismissButton.frame;    
    UIInterfaceOrientation orientation = self.interfaceOrientation;
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown) {
        basicView.dismissButton.frame = CGRectMake(self.view.bounds.size.width - frame.size.width, self.view.bounds.size.height - frame.size.height, frame.size.width, frame.size.height);
    } else {
        basicView.dismissButton.frame = CGRectMake(200, 10, frame.size.width, frame.size.height);        
    }
    
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}    

- (void)viewDidAppear:(BOOL)animated
{    
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}

- (void)viewWillLayoutSubviews
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}

- (void)viewDidLayoutSubviews
{    
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.view = nil;
}

- (void)presentPressed
{
    NSLog(@" -- Presenting View Controller -- ");
    
    ViewController *newViewController = [[ViewController alloc] init];
    newViewController.canRotateToLandscape = rand() > rand();
    [self presentViewController:newViewController animated:YES completion:nil];
}

- (void)dismissPressed
{
    NSLog(@" -- Dismissing View Controller -- ");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    [AppDelegate logEvent:__PRETTY_FUNCTION__];
    
    Boolean returnValue = YES;
    // Return YES for supported orientations
    if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
//        returnValue =  self.canRotateToLandscape;
    }

    NSLog(returnValue ? @"Will auto rotate" : @"Won't auto rotate - soz");
    
    return returnValue;
}

// Notifies when rotation begins, reaches halfway point and ends.
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}


- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    BasicView *basicView = (BasicView *) self.view;
    CGRect frame = basicView.dismissButton.frame;    
    UIInterfaceOrientation orientation = self.interfaceOrientation;
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown) {
        basicView.dismissButton.frame = CGRectMake(self.view.bounds.size.width - frame.size.width, self.view.bounds.size.height - frame.size.height, frame.size.width, frame.size.height);
    } else {
        basicView.dismissButton.frame = CGRectMake(200, 10, frame.size.width, frame.size.height);        
    }    
    
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation duration:(NSTimeInterval)duration
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame andOrientation: self.interfaceOrientation];
}
@end
