//
//  AppDelegate.m
//  YMCodeStandard
//
//  Created by 涛 陈 on 6/16/15.
//  Copyright (c) 2015 cornapp. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    _window.rootViewController = nav;
    [_window makeKeyAndVisible];
    
    return YES;
}

@end