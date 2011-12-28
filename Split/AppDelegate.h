//
//  AppDelegate.h
//  Split
//
//  Created by Jeffrey Rosenbluth on 12/5/11.
//  Copyright (c) 2011 Applause Code. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController * navController;
@property (strong, nonatomic) ViewController *viewController;

@end
