//
//  RootViewController.m
//  View Bounds
//
//  Created by Kevin Dew on 09/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "BasicView.h"

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
    
    NSLog(@"load view - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"view did load - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"view will appear - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
}    

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"view did appear - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
}

- (void)viewWillLayoutSubviews
{
    NSLog(@"view will layout subviews - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));    
}

- (void)viewDidLayoutSubviews
{
    NSLog(@"view did layout subviews - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
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
    NSLog(@" -- SHOULD AUTO ROTATE TO INTERFACE ORIENTATION --- ");
    // Return YES for supported orientations
	return YES;
}

// Notifies when rotation begins, reaches halfway point and ends.
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"will rotate to interface orientation - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    NSLog(@"did rotate to interface orientation - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));    
}


- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
       NSLog(@"will animate rotation to interface orientation - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds)); 
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"will animate first half of rotation to interface orientation - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));    
}
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    NSLog(@"did animate first half of rotation to interface orientation - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));    
}
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"did animate second half of rotation to interface orientation - frame: %@ bounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
}
@end
