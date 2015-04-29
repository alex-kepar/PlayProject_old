//
//  PPTabBarControllerViewController.m
//  PlayProject
//
//  Created by Oleksandr Kiporenko on 4/27/15.
//  Copyright (c) 2015 Oleksandr Kiporenko. All rights reserved.
//

#import "PPTabBarControllerViewController.h"
#import "Tab1ViewController.h"
#import "Tab2ViewController.h"

@interface PPTabBarControllerViewController ()

@end

@implementation PPTabBarControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIViewController *tab1 = [[Tab1ViewController alloc] init];
    UIViewController *tab2 = [[Tab2ViewController alloc] init];
    
    NSArray *myViewControllers = [[NSArray alloc] initWithObjects:tab1,tab2, nil];
    [self setViewControllers:myViewControllers];
    //[self.viewControllers]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
