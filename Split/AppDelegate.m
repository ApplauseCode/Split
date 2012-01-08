//
//  AppDelegate.m
//  Split
//
//  Created by Jeffrey Rosenbluth on 12/5/11.
//  Copyright (c) 2011 Applaude Code. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@implementation AppDelegate


@synthesize window = _window;
@synthesize navController = _navController;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    _navController = [[UINavigationController alloc] initWithRootViewController:_viewController];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleBlack];
    [[_navController navigationBar] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor colorWithRed:93/255.0 green:140/255.0 blue:214/255.0 alpha:1.0],
                                                           UITextAttributeTextColor,
                                                           [UIFont fontWithName:@"Georgia-Bold" size:22.0], UITextAttributeFont,
                                                           nil]];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [[[_viewController background] layer] removeAllAnimations];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    CABasicAnimation *mover = [CABasicAnimation animationWithKeyPath:@"position"];
    [mover setDuration:120];
    [mover setRepeatCount:HUGE_VALF];
    [mover setTimingFunction:[CAMediaTimingFunction 
                        functionWithName:kCAMediaTimingFunctionLinear]];
    [mover setToValue:[NSValue valueWithCGPoint:CGPointMake(800, 208)]];
    [[_viewController.background layer] addAnimation:mover forKey:@"SlowMove"];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [[[_viewController background] layer] removeAllAnimations];
}

@end
