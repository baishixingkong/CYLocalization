//
//  AppDelegate.m
//  CYLocalization
//
//  Created by 百事&可乐 on 2019/7/4.
//  Copyright © 2019 百事&可乐. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSArray *languages = [NSLocale preferredLanguages];
    
    NSString *language = [languages objectAtIndex:0];//第一个就是系统当前的语言
    
    if ([language hasPrefix:@"zh"]) {//检测开头匹配，是否为中文
        
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];//App语言设置为中文
        
    }else if ([language hasPrefix:@"ja"]){
        
        [[NSUserDefaults standardUserDefaults] setObject:@"ja" forKey:@"appLanguage"];//App语言设置为日文
        
    }else{//其他语言
        
        [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];//App语言设置为英文
        
    }
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
