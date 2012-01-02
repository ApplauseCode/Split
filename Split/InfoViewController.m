//
//  InfoViewController.m
//  Split
//
//  Created by Jeffrey Rosenbluth on 12/27/11.
//  Copyright (c) 2011 Applause Code. All rights reserved.
//

#import "InfoViewController.h"

@implementation InfoViewController
@synthesize scrollView;
@synthesize drop;
@synthesize geometryProof;
@synthesize convexity;
@synthesize alertMe;
@synthesize portRowing;
@synthesize faSchedule;

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    [scrollView setContentSize:CGSizeMake(480, 52)];
    [scrollView setShowsHorizontalScrollIndicator:NO];
}

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [self setDrop:nil];
    [self setGeometryProof:nil];
    [self setConvexity:nil];
    [self setAlertMe:nil];
    [self setPortRowing:nil];
    [self setFaSchedule:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)toAppStore:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Coming Soon" message:nil delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
    if (sender == drop)
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/drop!/id415884044?mt=8"]];
    else if (sender == faSchedule)
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/faschedule/id472827413?mt=8"]];
    else if (sender == geometryProof)
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/geometry-proof/id479753226?mt=8"]];
    else
        [alertView show];
}
@end
