//
//  AppDelegate.m
//  CHUIPropertyMaker
//
//  Created by Mac on 2021/10/30.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *vc = [[ViewController alloc] init];
    [self.window setRootViewController:vc];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
