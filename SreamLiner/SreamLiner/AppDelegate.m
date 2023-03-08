//
//  AppDelegate.m
//  SreamLiner
//
//  Created by Ray De Rose on 2023/03/08.
//

#import "AppDelegate.h"
#import "Stream.h"
#import "StreamLineView.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ViewController * newsVC = [[ViewController alloc]init];
    newsVC.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    UINavigationController* navVC = [[UINavigationController alloc]initWithRootViewController:newsVC];
    navVC.view.backgroundColor = [UIColor greenColor];
    [self.window makeKeyAndVisible];
    
    

    
    

    
    return YES;

}







@end
