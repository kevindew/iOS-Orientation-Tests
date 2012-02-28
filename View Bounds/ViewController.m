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
    
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];;
}

- (void)viewWillAppear:(BOOL)animated
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}    

- (void)viewDidAppear:(BOOL)animated
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}

- (void)viewWillLayoutSubviews
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}

- (void)viewDidLayoutSubviews
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
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
    // Return YES for supported orientations
	return YES;
}

// Notifies when rotation begins, reaches halfway point and ends.
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}


- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];   
}
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation duration:(NSTimeInterval)duration
{
    [AppDelegate logMethod:__PRETTY_FUNCTION__ withSender:self withViewBounds:self.view.bounds andViewFrame:self.view.frame];
}
@end
